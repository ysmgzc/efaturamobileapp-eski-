
import 'package:efaturamobileapp/bottom_app_bar_desing.dart';
import 'package:efaturamobileapp/detayli_arama_screen.dart';
import 'package:flutter/material.dart';

class MusteriVeTedarikciDetayliArama extends StatefulWidget {
  const MusteriVeTedarikciDetayliArama({super.key});

  @override
  State<MusteriVeTedarikciDetayliArama> createState() => _MusteriVeTedarikciDetayliAramaState();
}

class _MusteriVeTedarikciDetayliAramaState extends State<MusteriVeTedarikciDetayliArama> {
  bool value = false;
    TextEditingController dateInput = TextEditingController();
     String? selectedValue;
  List<String> items = <String>[
    'TL',
    'EUR',
    'GBP',
    'CHF',
    'JPY',
    'AZM',
    'BGN',
    'CNY',
    'USD',
    'PLN',
    'RUB',
    'SGD',
    'DZD',
    'XAU',
    'UZS',
    'MKD',
    'KGS',
  ];
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
         iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
         elevation: 0,
        centerTitle: true,
        title:const Text(
          'Detaylı Arama',style: TextStyle(color: Colors.black),
        ),
      ),
    
      body: SingleChildScrollView(
        padding:const EdgeInsets.only(top: 10),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
        child:Column(children: [
//----------------------Müşteri & Tedarikçi Tipi---------------------------------------------
 DetayliAramaWidget(
            metin: "Müşteri & Tedarikçi Tipi",
            altMetin:"Tümü",
            onTap: () {
                 showDialog(
  context: context,
  builder: (BuildContext context) {
    return ShowDialogCheckBox(
      dialogTitle: "Müşteri & Tedarikçi Tipi",
      checkboxTexts:const [
        "Müşteri / Tedarikçi",
        "Müşteri",
        "Tedarikçi",
      ],
    );
  },
);  
      },   ),
//---------------------Bakiye Durumu----------------------------------------------------------
       DetayliAramaWidget(
            metin: "Bakiye Durumu",
            altMetin:"Tümü",
           onTap: () {
       showDialog(
  context: context,
  builder: (BuildContext context) {
    return ShowDialogCheckBox(
      dialogTitle: "Bakiye Durumu",
      checkboxTexts:const [
        "Tahsil Edilecek",
        "Ödenecek",
      ],
    );
  },
); }, ),
//---------------------Durumu----------------------------------------------------------
       DetayliAramaWidget(
            metin: "Durumu",
            altMetin:"Tümü",
           onTap: () {
       showDialog(
  context: context,
  builder: (BuildContext context) {
    return ShowDialogCheckBox(
      dialogTitle: "Durumu",
      checkboxTexts:const [
        "Aktif",
        "Pasif",
      ],
    );
  },
); }, ),

        ],)
           
        ),
      ),
    bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        text: "SONUÇLARI GÖSTER",
        backgroundColor: Colors.blue,
          ),
    );
  }

 
}