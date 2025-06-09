import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mango_leaf_disease/model/userModel.dart';

class UserProvider with ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  /// Fetch user data from Firestore
  Future<void> fetchUserData() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return;

    final doc =
        await FirebaseFirestore.instance.collection('users').doc(uid).get();

    if (doc.exists) {
      _user = UserModel.fromMap(doc.data()!);
      notifyListeners();
    }
  }

  /// Update specific user fields
  Future<void> updateUserData({
    String? name,
    String? address,
    String? phone,
    String? profileImage,
  }) async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return;

    final updates = <String, dynamic>{};

    if (name != null) updates['name'] = name;
    if (address != null) updates['address'] = address;
    if (phone != null) updates['phone'] = phone;
    if (profileImage != null) updates['profile_image'] = profileImage;

    await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .update(updates);

    // Refresh local state
    await fetchUserData();
  }

  /// Clear user (for logout or refresh)
  void clearUser() {
    _user = null;
    notifyListeners();
  }
}
