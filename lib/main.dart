import 'package:efaturamobileapp/screens/login_screen.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/tekstil_hammadde/tekstil_hammadde.dart';
import 'package:flutter/material.dart';
import 'home_screen/home_page_screen.dart';
import 'satislar/satis_faturasi/satis_fatura_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
       theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
    primarySwatch: Colors.blue, 
   // appBarTheme: AppBarTheme(color: Colors.blue),
  ),
      home: TekstilHammaddeEkle(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 //TekstilHammaddeEkle
 //LoginScreen