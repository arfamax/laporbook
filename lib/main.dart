import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:laporbook/firebase_options.dart';
import 'package:laporbook/pages/AddForm.dart';
import 'package:laporbook/pages/DetailPage.dart';
import 'package:laporbook/pages/LoginPage.dart';
import 'package:laporbook/pages/RegisterPage.dart';
import 'package:laporbook/pages/SplashPage.dart';
import 'package:laporbook/pages/dashboard/DashboardPage.dart';
// import 'package:flutter_lapor_book/pages/AddFormPage.dart';
// import 'package:flutter_lapor_book/pages/dashboard/DashboardPage.dart';
// import 'package:flutter_lapor_book/pages/DetailPage.dart';
// import 'package:flutter_lapor_book/pages/LoginPage.dart';
// import 'package:flutter_lapor_book/pages/RegisterPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    title: 'Lapor Book',
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashPage(),
      '/login': (context) => const LoginPage(),
      '/register': (context) => const RegisterPage(),
      '/dashboard': (context) => const DashboardPage(),
      '/add': (context) => AddFormPage(),
      '/detail': (context) => DetailPage(),
    },
  ));
}
