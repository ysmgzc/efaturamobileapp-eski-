
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/satislar/satis_faturasi/secenekler/satisfaturasidetayliarama.dart';
import 'package:flutter/material.dart';

import '../../../../bottom_show_dialog_widget.dart';

enum ExceleAktar { standart, luca, detayli }

class YemekGiderHareket extends StatefulWidget {
  const YemekGiderHareket({super.key});

  @override
  State<YemekGiderHareket> createState() => _YemekGiderHareketState();
}

class _YemekGiderHareketState extends State<YemekGiderHareket> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Yemek Giderleri',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CustomIconButton(
            options: [
              SheetOption(
                icon: const Icon(Icons.filter_alt, color: Colors.black),
                text: 'Detaylı Arama',
                page: const SatisFaturasiDetayliArama(),
              ),
              SheetOption(
                  icon: Image.asset(
                    'assets/icons/excelicon.png',
                    width: 20,
                    height: 20,
                  ),
                  text: "Excel'e Aktar",
                  onTap: () {}
                  ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.01,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 20,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
                child:const Column(
                  children:  [
                    ContainerWidget(
                      baslik: "Satış Siparişi",
                      tedarikciAdi: 'Deneme Satış Ltd. Şti.',
                      tedarikciAdiStyle: TextStyle(fontSize: 14),
                      tedarikciNo: '000000000000001',
                      tedarikciNoStyle: TextStyle(color: Colors.black),
                      durumu: '1 Kilogram x ₺25',
                      tarih: '24 Nisan',
                      paraBirimi: '₺1000',
                    ),
                    Divider(),
                    ContainerWidget(
                       baslik: "Toptan Satış Faturası",
                      tedarikciAdi: 'Test Satış Ltd. Şti.',
                      tedarikciAdiStyle: TextStyle(fontSize: 14),
                      tedarikciNo: '000000000000001',
                      tedarikciNoStyle: TextStyle(color: Colors.black),
                      durumu: '1 Kilogram x ₺25',
                      tarih: '24 Nisan',
                      paraBirimi: '₺1000',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}