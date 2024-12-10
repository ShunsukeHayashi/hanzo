import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDAqWneYpm5d_NBgmONizAxbn57MkYuT7o",
            authDomain: "hanzo-335d8.firebaseapp.com",
            projectId: "hanzo-335d8",
            storageBucket: "hanzo-335d8.appspot.com",
            messagingSenderId: "172798351656",
            appId: "1:172798351656:web:52cbfa92c1eb611a33981d",
            measurementId: "G-XCTRMPFLJX"));
  } else {
    await Firebase.initializeApp();
  }
}
