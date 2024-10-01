import 'package:agence_voyage/HomePage.dart';
import 'package:flutter/material.dart';
import 'DetailsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'View Contries',
      debugShowCheckedModeBanner: false,
      home: Detailspage(),
    );
  }
}
