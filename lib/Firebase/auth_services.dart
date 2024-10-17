import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
class Authservice{
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<UserCredential> signInWithEmailandPassword(String email , password) async{
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);

      return userCredential;
    } on FirebaseAuthException catch(e){
throw Exception(e.code);
    }
  }

  Future<UserCredential> signUpWithEmailandPassword(String email , password) async{
    try{
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    }on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }
  }

  Future<void> signOut() async{
return await auth.signOut();
}
  }