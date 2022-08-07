import 'dart:async';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vocabulary/modules/login/login_modules.dart';
import 'package:vocabulary/service/gg/gg_service.dart';

class GoogleBloc {
  GoogleService ?_googleService;

  GoogleBloc() {
    _googleService = GoogleService();
  }
  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}');
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }

//   Future<Login> signInction() async {//lỗi không tìm được cách fix đi ngũ thôi
//     Completer<Login> c = new Completer();
//     var _login = new Login();
//     try {
//       final GoogleSignIn _ggSignIn = GoogleSignIn();
//       final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//       final GoogleSignInAccount googleUser =
//           _ggSignIn.signIn() as GoogleSignInAccount;

//       final GoogleSignInAuthentication googleAuth =
//           await googleUser.authentication;
//       final AuthCredential credential = GoogleAuthProvider.getCredential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );

//       var authResult = await _firebaseAuth.signInWithCredential(credential);

      
//       var token = await authResult.user.getIdToken();
      
//       printWrapped(token.token);
//       _googleService?.signInction(token.token).then((respone) {
//         _login = respone;
//         c.complete(_login);
//       });
      
      
//       return c.future;


//     } catch (user) {
//       print(user.toString());
//     }
//   }
// }
Future<Login> signInction() async {
    Completer<Login> c = new Completer();
    var _signInResponse = new Login();
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn();

      final FirebaseAuth _FirebaseAuth = FirebaseAuth.instance;

      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      var authResult = await _FirebaseAuth.signInWithCredential(credential);

      var token = await authResult.user.getIdToken();
      //print("ââbjạdhfksạdfhkhkfjád");
      printWrapped(token.token);
      _googleService?.signInction(token.token).then((response){
        _signInResponse = response;
        c.complete(_signInResponse);
      });

     return c.future;
    }
    catch (user) {
      // ignore: avoid_print
      print(user);
      //return _showAlert(context, "Login", user.message.toString());
    }

  }
}
