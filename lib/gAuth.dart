import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login/Dashboard.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  googleLogin() async {
    print("googleLogin method Called");
    GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      var reslut = await _googleSignIn.signIn();
      if (reslut == null) {
        return;
      }

      final userData = await reslut.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);
      var finalResult =
      await FirebaseAuth.instance.signInWithCredential(credential);
      print("Result $reslut");
      print(reslut.displayName);
      print(reslut.email);
      print(reslut.photoUrl);
    } catch (error) {
      print(error);
    }
  }

  Future<void> logout() async {
    await GoogleSignIn().disconnect();
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
        actions: [
          TextButton(
            onPressed: logout,
            child: const Text(
              'LogOut',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.only(left: 150.0 , top: 250),
            child:   ElevatedButton(
                child: const Text('Google Login'), onPressed: googleLogin),

          ),
          Container(
            padding: EdgeInsets.only(left: 150.0 , top: 1),

            child:  IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              iconSize: 50,
              color: Colors.brown,

              onPressed: () {
                Timer(Duration(seconds: 2),(){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Dashboard(),
                  ),
                  );
                });

              },
            ),
          )
        ],
      ),



    );
  }
}



