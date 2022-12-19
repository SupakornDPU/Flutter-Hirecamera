import 'package:flutter/material.dart';
import 'package:project/screen/login.dart';
import 'package:project/screen/navbar.dart';
import 'package:project/screen/order.dart';
import 'package:project/screen/product_details.dart';
import 'package:project/screen/product_category.dart';
import 'package:project/screen/profile.dart';
import 'package:project/screen/register.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screen/transfer.dart';

import 'screen/home.dart';

void main() => runApp(
      const MaterialApp(
        home: loginscreen(),
      ),
    );

// void main() {
//   runApp(MyHomePage());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Login';
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const CalApp(),
      ),
    );
  }
}
