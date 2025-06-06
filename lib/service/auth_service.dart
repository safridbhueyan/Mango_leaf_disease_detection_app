import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  // get current user
  User? getCurrentUser() {
    return _auth.currentUser;
  }
  // get current user uid

  String getCurrentUid() {
    return _auth.currentUser!.uid;
  }

  // login method
  Future<UserCredential> loginEmailPassword(String email, password) async {
    try {
      final UserCredential user = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return user;
    } on FirebaseAuthException catch (e) {
      throw Exception(e);
    }
  }

  //sign up

  Future<UserCredential> signUpWithCred(String email, password) async {
    try {
      final UserCredential user = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return user;
    } on FirebaseAuthException catch (e) {
      throw Exception(e);
    }
  }

  //logout

  Future<void> logout() async {
    await _auth.signOut();
  }
}
