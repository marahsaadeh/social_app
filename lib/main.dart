import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:social_app/firebase_options.dart';
import 'package:social_app/responsive/mobile.dart';
import 'package:social_app/responsive/responsive.dart';
import 'package:social_app/responsive/web.dart';
import 'package:social_app/screens/register.dart';
import 'package:social_app/screens/sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //web
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyD0RJ5F4OyilvN_X0MwS_U2r22MYCKmm0Y",
        authDomain: "social-app-4b049.firebaseapp.com",
        projectId: "social-app-4b049",
        storageBucket: "social-app-4b049.firebasestorage.app",
        messagingSenderId: "753949466240",
        appId: "1:753949466240:web:aa14e3cbf5bd8d76515065",
      ),
    );
  } else {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Register(),
      // home: Resposive(
      //   myMobileScreen: MobileScerren(),
      //   myWebScreen: WebScerren(),
      // ),
    );
  }
}
