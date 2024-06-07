import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<User?> signUpWithEmailAndPassword(
      String name, String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      if (credential != null) {
        print("Created account");
        await _firestore.collection('users').doc(_auth.currentUser?.uid).set({
          "name": name,
          "email": email,
          "status": "Unavailable",
          "uid": _auth.currentUser!.uid
        });

        return credential.user;
      } else {
        print("Failed to create account");
        return credential.user;
      }
    } catch (e) {
      print("error");
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      _firestore
          .collection('users')
          .doc(_auth.currentUser!.uid)
          .get()
          .then((value) => {credential.user!.updateDisplayName(value['name'])});
      return credential.user;
    } catch (e) {
      print("error");
    }
    return null;
  }
}

Future logOut(BuildContext context) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  try {
    await _auth.signOut();
    print("Log out successfully");
  } catch (e) {
    print(e);
  }
}
