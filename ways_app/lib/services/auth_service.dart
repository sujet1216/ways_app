import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? get currentUser => _auth.currentUser;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<User?> signIn(String email, String password) async {
    final cred = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return cred.user;
  }

  Future<User?> signUp(String email, String password) async {
    final cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    await cred.user?.sendEmailVerification();
    return cred.user;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<void> sendReset(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }
}
