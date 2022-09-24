import "package:cono/my_app.dart";
import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:url_strategy/url_strategy.dart";

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDS3yr--lAVKeHltlzrh0LGVi7GwZOTElo",
      authDomain: "cono-04-82b36.firebaseapp.com",
      projectId: "cono-04-82b36",
      storageBucket: "cono-04-82b36.appspot.com",
      messagingSenderId: "585681117416",
      appId: "1:585681117416:web:c81aa0fe2e79e4947ba95d",
      measurementId: "G-6V182898V7",
    ),
  );
  runApp(const MyApp());
}
