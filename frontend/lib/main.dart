// lib/main.dart

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notanerd_app/services/auth_service.dart';
import 'package:notanerd_app/pages/home_page.dart';
import 'package:notanerd_app/pages/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// The main entry point for the NotANerd application.
///
/// This function initializes the Flutter binding and Firebase, and then runs
/// the [MyApp] widget.
void main() async {
  // Ensure that the Flutter binding is initialized before using plugins.
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Firebase for the application.
  await Firebase.initializeApp();
  
  runApp(const MyApp());
}

/// The root widget of the NotANerd application.
class MyApp extends StatelessWidget {
  /// Creates a new [MyApp] instance.
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NotANerd App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // The StreamBuilder listens to the user's authentication state changes
      // and displays either the [HomePage] or [SignInPage] accordingly.
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // If the snapshot has data, a user is signed in.
          if (snapshot.hasData) {
            return const HomePage();
          }
          // Otherwise, show the sign-in page.
          return const SignInPage();
        },
      ),
    );
  }
}
