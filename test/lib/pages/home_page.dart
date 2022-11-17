import 'package:test/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Auth"),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
            Text(user?.email ?? ''),
            MaterialButton(       
              onPressed: signOut,
              child: const Text("Sign Out", 
              style: TextStyle(backgroundColor: Colors.blue,
              color: Colors.white,fontSize: 15),),)
          ],
        ),
      ),
    );
  }
}