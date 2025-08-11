// lib/pages/sign_in_page.dart

import 'package:flutter/material.dart';
import 'package:notanerd_app/services/auth_service.dart';

/// A [StatelessWidget] that represents the sign-in page of the NotANerd application.
///
/// This page provides a button that triggers the Google Sign-In authentication flow.
class SignInPage extends StatelessWidget {
  /// Creates a new [SignInPage].
  const SignInPage({Key? key}) : super(key: key);

  /// An instance of [AuthService] to handle authentication.
  static final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotANerd App - Sign In'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to NotANerd!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // The button that triggers the Google Sign-In process.
            ElevatedButton(
              onPressed: () async {
                try {
                  // Call the Google Sign-In method from AuthService.
                  await _authService.signInWithGoogle();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Successfully signed in!')),
                  );
                } on Exception catch (e) {
                  // Handle and show any errors that occur during sign-in.
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Sign-in failed: $e')),
                  );
                }
              },
              child: const Text('Sign in with Google'),
            ),
          ],
        ),
      ),
    );
  }
}
