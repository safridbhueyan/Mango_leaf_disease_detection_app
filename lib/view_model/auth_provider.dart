import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthServiceProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User? _user;

  User? get user {
    return _user;
  }

  User? getCurrentUser() {
    return _auth.currentUser;
  }

  String getCurrentUid() {
    return _auth.currentUser?.uid ?? "";
  }

  // Listen to auth state changes
  AuthService() {
    _auth.authStateChanges().listen((User? user) {
      _user = user;
      notifyListeners();
    });
  }

  // Login with Email & Password
  Future<void> loginEmailPassword(String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _user = userCredential.user;
      notifyListeners();
    } on FirebaseAuthException catch (e) {
      throw Exception("Login failed: ${e.message}");
    }
  }

  // Sign up with Email/Password and store extra info
  Future<void> signUpWithDetails({
    required String email,
    required String password,
    required String name,
    required String address,
    required DateTime dob,
  }) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      _user = userCredential.user;

      // Save additional user info to Firestore
      await _firestore.collection("users").doc(_user!.uid).set({
        "uid": _user!.uid,
        "email": email,
        "name": name,
        "address": address,
        "date_of_birth": dob.toIso8601String(),
        "created_at": FieldValue.serverTimestamp(),
      });

      notifyListeners();
    } on FirebaseAuthException catch (e) {
      throw Exception("Sign up failed: ${e.message}");
    }
  }

  // Logout
  Future<void> logout() async {
    await _auth.signOut();
    _user = null;
    notifyListeners();
  }
}
