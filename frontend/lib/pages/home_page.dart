// lib/pages/home_page.dart

import 'package:flutter/material.dart';
import 'package:notanerd_app/services/auth_service.dart';

/// A StatelessWidget that represents the home page of the NotANerd application.
///
/// This page is displayed to the user after they have successfully signed in.
class HomePage extends StatelessWidget {
  /// Creates a new [HomePage].
  const HomePage({Key? key}) : super(key: key);

  /// A static instance of [AuthService] to handle authentication.
  static final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotANerd App - Home'),
        actions: [
          /// The sign-out button.
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              try {
                /// Calls the sign-out method from [AuthService].
                await _authService.signOut();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Successfully signed out!')),
                );
              } on Exception catch (e) {
                /// Handles and displays any errors that occur during sign-out.
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Sign-out failed: $e')),
                );
              }
            },
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You are signed in!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Welcome to the NotANerd app.'),
          ],
        ),
      ),
    );
  }
}
