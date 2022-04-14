import 'package:sargam_export/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase/firebase.dart';

void main() async {
  try {
    initializeApp(
        apiKey: "AIzaSyA87tVeE57E9Ef5uFd4HfPagks1UbINfeE",
        authDomain: "sargam-a6378.firebaseapp.com",
        databaseURL: "https://sargam-a6378-default-rtdb.firebaseio.com",
        projectId: "sargam-a6378",
        storageBucket: "sargam-a6378.appspot.com",
        messagingSenderId: "285218288784",
        appId: "1:285218288784:web:3df2ec8a405cfa66375415",
        measurementId: "G-FR2V1TPYNV");
  } catch (e) {
    print("Skipped initialization");
  }
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AuthLayer(),
  ));
}
