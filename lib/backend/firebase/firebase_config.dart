import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAt5oqN99SfJHjiPy8pGBn5CIPjz4uREuw",
            authDomain: "drill-core-j0yeng.firebaseapp.com",
            projectId: "drill-core-j0yeng",
            storageBucket: "drill-core-j0yeng.appspot.com",
            messagingSenderId: "640916741529",
            appId: "1:640916741529:web:a953539705b71beec70708"));
  } else {
    await Firebase.initializeApp();
  }
}
