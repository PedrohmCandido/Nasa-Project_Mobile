//Firebase
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

//Material UI
import 'package:flutter/material.dart';

//Páginas Internas
import 'package:mynasaproject/firebase_options.dart';
import 'package:mynasaproject/pages/login_page.dart';

import 'package:mynasaproject/pages/day_img.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDpgmGIwk-V9dJXH49dfjcIh8TbYFdZCSs",
          authDomain: "nasa-app-79938.firebaseapp.com",
          projectId: "nasa-app-79938",
          storageBucket: "nasa-app-79938.firebasestorage.app",
          messagingSenderId: "395257694459",
          appId: "1:395257694459:web:fc4471708397985a33485e"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
