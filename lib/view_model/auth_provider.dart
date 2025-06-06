import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthServiceProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User? _user;
  bool _isLoading = false;

  AuthServiceProvider() {
    _auth.authStateChanges().listen((User? user) {
      _user = user;
      notifyListeners();
    });
  }

  User? get user => _user;
  bool get isLoading => _isLoading;

  User? getCurrentUser() => _auth.currentUser;

  String getCurrentUid() => _auth.currentUser?.uid ?? "";

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> loginEmailPassword(String email, String password) async {
    _setLoading(true);
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw Exception("Login failed: ${e.message}");
    } finally {
      _setLoading(false);
    }
  }

  Future<bool> signUpWithDetails({
    required String email,
    required String password,
    required String name,
    required String address,
    required DateTime dob,
    required File? profileImage,
  }) async {
    _setLoading(true);
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      _setLoading(false);
      notifyListeners();

      _user = userCredential.user;

      // 2. Upload image to Firebase Storage (if provided)
      String? profileImageUrl;
      if (profileImage != null) {
        final storageRef = FirebaseStorage.instance.ref().child(
          'profile_images/${_user!.uid}.jpg',
        );
        await storageRef.putFile(profileImage);
        profileImageUrl = await storageRef.getDownloadURL();
      }
      await _firestore.collection("users").doc(_user!.uid).set({
        "uid": _user!.uid,
        "email": email,
        "name": name,
        "address": address,
        "date_of_birth": dob.toIso8601String(),
        "created_at": FieldValue.serverTimestamp(),
        "profile_image": profileImageUrl ?? "",
      });
      return true;
    } on FirebaseAuthException catch (e) {
      throw Exception("Sign up failed: ${e.message}");
    } finally {
      _setLoading(false);
    }
  }

  Future<Map<String, dynamic>?> fetchUserData() async {
    final doc = await _firestore.collection("users").doc(_user?.uid).get();
    return doc.exists ? doc.data() : null;
  }

  Future<void> logout() async {
    await _auth.signOut();
    _user = null;
    notifyListeners();
  }
}
