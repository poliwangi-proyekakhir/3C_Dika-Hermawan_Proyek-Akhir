import 'package:flutter/material.dart';
import 'petani/produk/dashboard.dart';
 import 'awal/registerPetani.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return MaterialApp( 
        debugShowCheckedModeBanner: false,
        title: 'RojoTani',
        theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        ),
        home: homePage(),
      );
  }
}