// test/google_sign_in_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:notanerd_app/services/auth_service.dart';

import 'google_sign_in_test.mocks.dart';

@GenerateMocks([
  FirebaseAuth,
  GoogleSignIn,
  GoogleSignInAccount,
  GoogleSignInAuthentication,
  UserCredential,
])
void main() {
  group('AuthService', () {
    test('signInWithGoogle should sign in and return a UserCredential', () async {
      // Mock objects
      final mockFirebaseAuth = MockFirebaseAuth();
      final mockGoogleSignIn = MockGoogleSignIn();
      final mockGoogleSignInAccount = MockGoogleSignInAccount();
      final mockGoogleSignInAuthentication = MockGoogleSignInAuthentication();
      final mockUserCredential = MockUserCredential();

      // Stubbing the methods and properties for sign-in
      when(mockGoogleSignIn.signIn()).thenAnswer((_) async => mockGoogleSignInAccount);
      when(mockGoogleSignInAccount.authentication).thenAnswer((_) async => mockGoogleSignInAuthentication);
      when(mockGoogleSignInAuthentication.accessToken).thenAnswer((_) => 'fake_access_token');
      when(mockGoogleSignInAuthentication.idToken).thenAnswer((_) => 'fake_id_token');
      when(mockFirebaseAuth.signInWithCredential(any)).thenAnswer((_) async => mockUserCredential);

      // Arrange
      final authService = AuthService(
        firebaseAuth: mockFirebaseAuth,
        googleSignIn: mockGoogleSignIn,
      );

      // Act
      final userCredential = await authService.signInWithGoogle();

      // Assert
      expect(userCredential, mockUserCredential);
      verify(mockGoogleSignIn.signIn()).called(1);
      verify(mockFirebaseAuth.signInWithCredential(any)).called(1);
    });

    test('signOut should sign out from both Firebase and Google', () async {
      // Mock objects
      final mockFirebaseAuth = MockFirebaseAuth();
      final mockGoogleSignIn = MockGoogleSignIn();

      // Stubbing the sign-out methods
      when(mockGoogleSignIn.signOut()).thenAnswer((_) async => null);
      when(mockFirebaseAuth.signOut()).thenAnswer((_) async => null);

      // Arrange
      final authService = AuthService(
        firebaseAuth: mockFirebaseAuth,
        googleSignIn: mockGoogleSignIn,
      );

      // Act
      await authService.signOut();

      // Assert
      // Verify that both signOut methods were called exactly once.
      verify(mockGoogleSignIn.signOut()).called(1);
      verify(mockFirebaseAuth.signOut()).called(1);
    });
  });
}
