import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService{
  FirebaseAuth auth = FirebaseAuth.instance;
    Future<User?> signUpWithEmailAndPasword(String email, String password) async{

      try{
        UserCredential credential = await auth.createUserWithEmailAndPassword(email: email, password: password);
        return credential.user;
      }catch(e){
        print("error during sign_up: $e");
      }
      return null;
    }

    Future<User?> signInWithEmailAndPasword(String email, String password) async{

      try{
        UserCredential credential = await auth.signInWithEmailAndPassword(email: email, password: password);
        return credential.user;
      }catch(e){
        print("some error occured");
      }
      return null;
    }
}