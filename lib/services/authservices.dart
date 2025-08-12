import 'package:firebase_auth/firebase_auth.dart';

class Authservices {
  final auth = FirebaseAuth.instance;

  //signIn function
  void signIn(String email, String password) async {
    await auth.signInWithEmailAndPassword(email: email, password: password);
  }

  //signUp fucntion
  void signUp(String email, String password) async {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  //signOut function
  void signOut() async {
    await auth.signOut();
  }

  Stream<User?> get authChanges => auth.authStateChanges();
}
