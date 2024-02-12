import 'package:auth/global/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService{
  FirebaseAuth auth = FirebaseAuth.instance;
    Future<User?> signUpWithEmailAndPasword(String email, String password) async{

      try{
        UserCredential credential = await auth.createUserWithEmailAndPassword(email: email, password: password);
        return credential.user;
      } on FirebaseAuthException catch(e){
        if(e.code == 'email-already-in-use'){
          showToast(message: 'The email adress is already registered.');
        }else{
          showToast(message: 'An error occured: ${e.code}');
        }
      }
      return null;
    }

    Future<User?> signInWithEmailAndPasword(String email, String password) async{

      try{
        UserCredential credential = await auth.signInWithEmailAndPassword(email: email, password: password);
        return credential.user;
      }on FirebaseAuthException catch(e){
        if (e.code == 'user-not-found' || e.code == 'wrong password'){
          showToast(message: 'Invalid email or password');
        }else{
          showToast(message: 'An error occurred: ${e.code}');
        }
        print("some error occured");
      }
      return null;
    }
}