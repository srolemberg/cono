import "package:firebase_auth/firebase_auth.dart" as firebase;
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

class HomeLogin extends StatefulWidget {
  const HomeLogin({Key? key}) : super(key: key);

  @override
  State<HomeLogin> createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {
  late firebase.FirebaseAuth auth;

  @override
  void initState() {
    super.initState();
    auth = firebase.FirebaseAuth.instance;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("title"),
          elevation: 2,
        ),
        body: Column(
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                print("auth.currentUser?.isAnonymous ${auth.currentUser?.isAnonymous}");

                auth.signInAnonymously().then(
                  (firebase.UserCredential value) {
                    print("isAnonymous ${value.user?.isAnonymous}");
                  },
                );
                // auth.authStateChanges().listen((firebase.User? user) {
                //   if (user == null) {
                //     if (kDebugMode) {
                //       print("User is currently signed out!");
                //     }
                //   } else {
                //     if (kDebugMode) {
                //       print("User is signed in!");
                //     }
                //   }
                // });
              },
              child: const Text("login"),
            )
          ],
        ),
      );
}
