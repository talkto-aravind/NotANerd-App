// lib/services/auth_service.dart

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

/// A service class to handle all authentication-related tasks for the app.
///
/// This class provides methods for signing in with Google and signing out.
/// It is designed for testability by allowing dependency injection of
/// [FirebaseAuth] and [GoogleSignIn].
class AuthService {
  /// The instance of Firebase Auth.
  final FirebaseAuth _firebaseAuth;
  /// The instance of Google Sign-In.
  final GoogleSignIn _googleSignIn;

  /// Creates a new [AuthService] instance.
  ///
  /// The [firebaseAuth] and [googleSignIn] parameters are optional,
  /// and will default to their standard instances if not provided.
  AuthService({
    FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn();

  /// Handles the Google Sign-In flow.
  ///
  /// This method signs the user in with Google and returns a [UserCredential].
  /// Throws a [FirebaseAuthException] if the user cancels the sign-in process.
  Future<UserCredential> signInWithGoogle() async {
    try {
      // Begin the sign-in process with Google.
      final googleUser = await _googleSignIn.signIn();
      
      // If the user cancels the sign-in, googleUser will be null.
      if (googleUser == null) {
        throw FirebaseAuthException(
          code: 'user-cancelled',
          message: 'Google Sign-In was cancelled by the user.',
        );
      }

      // Obtain the authentication details from the Google sign-in request.
      final googleAuth = await googleUser.authentication;

      // Create a new Firebase credential using the Google tokens.
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with the new credential.
      return await _firebaseAuth.signInWithCredential(credential);
    } catch (e) {
      // Re-throw the error for proper handling in the UI.
      rethrow;
    }
  }

  /// Handles the sign-out process for both Firebase and Google.
  ///
  /// This method signs the user out of the current session.
  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _firebaseAuth.signOut();
  }
}
