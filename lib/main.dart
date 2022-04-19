import 'package:flutter/material.dart';
import 'petani/produk/dashboard.dart';
import 'petani/transaksi/cekOut.dart';
 import 'awal/loginAs.dart';
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
        home: cekoutPage(),
      );
  }
}