import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/altin/tahsilat_screen.dart';
import 'package:efaturamobileapp/islemler/components/sliding_widget.dart';
import 'package:efaturamobileapp/islemler/urun_ekle_border_save_animasyonsuz_altin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormScreenSaveAltin extends StatefulWidget {
  String appBarBaslik;
  FormScreenSaveAltin({
    required this.appBarBaslik,
  });

  @override
  State<FormScreenSaveAltin> createState() => _FormScreenSaveAltinState();
}

class _FormScreenSaveAltinState extends State<FormScreenSaveAltin> {
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
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    loading();
    super.initState();
  }

  void loading() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        //shadowColor: Colors.transparent,
        backgroundColor: color4,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          widget.appBarBaslik,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CustomIconAltin(
            iconData: Icons.delete,
            onPressed: () {},
          ),
          CustomIconAltin(
            iconData: Icons.edit,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                    vertical: screenHeight * 0.01,
                  ),
                  color: color4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Cari Bilgisi",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: screenWidth * 0.35,
                            height: screenHeight * 0.035,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: color2,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Text(
                                "Vadesi geçen 182 gün",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: screenWidth * 0.35,
                            height: screenHeight * 0.035,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: color2,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Text(
                                "Vadesi geçen 182 gün",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: color7,
                                  ),
                                  SizedBox(width: 8),
                                  Column(
                                    children: [
                                      Text(
                                        "Fatura Tarihi",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: color7,
                                        ),
                                      ),
                                      Text(
                                        "27/11/2023",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: color7,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: color7,
                                  ),
                                  SizedBox(width: 8),
                                  Column(
                                    children: [
                                      Text(
                                        "Vade Tarihi",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: color7,
                                        ),
                                      ),
                                      Text(
                                        "27/11/2023",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: color7,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Toplam Miktar",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: color7,
                                        ),
                                      ),
                                      Text(
                                        "140,400 GR",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: color7,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Kalan Miktar",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: color7,
                                        ),
                                      ),
                                      Text(
                                        "94,900 GR",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: color2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomIconAltin(
                            iconData: Icons.local_shipping,
                            onPressed: () {},
                          ),
                          CustomIconAltin(
                            iconData: Icons.print,
                            onPressed: () {},
                          ),
                          CustomIconAltin(
                            iconData: Icons.share,
                            onPressed: () {},
                          ),
                          CustomIconAltin(
                            iconData: Icons.copy_sharp,
                            onPressed: () {},
                          ),
                          CustomIconAltin(
                            iconData: Icons.more_vert,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                    vertical: screenHeight * 0.01,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: color6, width: 0.5),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(TahsilatScreen());
                        },
                        child: Container(
                          width: screenWidth,
                          height: screenHeight * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: color6,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: CustomIconAltin(
                                        iconData: Icons.account_balance_wallet,
                                        onPressed: () {},
                                      ),
                                    ),
                                    const Text(
                                      'Ödeme Tahsil Et',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    Icons.navigate_next,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      UrunEkleBorderSaveAnimasyonsuzAltin(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        showInfo: true,
                        baslik: "Bilezik ",
                        baslik2: "22K",
                        birim: '100 GR',
                        fiyat: "916",
                        iscilik: "İşçilik :",
                        iscilikDegeri: "0,020",
                        kur: "Kur :",
                        kurDegeri: "₺0,00",
                        araToplamFiyat: '91,960 GR',
                        iscilikHesabi: "2,00 GR",
                        miktar: "92,600 GR",
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      UrunEkleBorderSaveAnimasyonsuzAltin(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        baslik: "Bilezik ",
                        baslik2: "22K",
                        birim: '100 GR',
                        fiyat: "916",
                        iscilik: "İşçilik :",
                        iscilikDegeri: "0,020",
                        kur: "Kur :",
                        kurDegeri: "₺0,00",
                        araToplamFiyat: '91,960 GR',
                        iscilikHesabi: "2,00 GR",
                        miktar: "92,600 GR",
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SlidingPanel(),
        ],
      ),
    );
  }
}

class CustomIconAltin extends StatelessWidget {
  final dynamic
      iconData; // İkonun IconData veya resmin asset yolunun alınacağı değişken
  final Function onPressed;
  final Color? color;
  final Color? iconColor;
  final double? containerwidth;
  final double? containerheight;

  CustomIconAltin({
    required this.iconData,
    required this.onPressed,
    this.color = color8,
    this.iconColor = color6,
    this.containerwidth = 30,
    this.containerheight = 30,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        width: containerwidth,
        height: containerheight,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: iconData is IconData
            ? Padding(
                padding: const EdgeInsets.all(3),
                child: Icon(
                  iconData,
                  color: iconColor,
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(3),
                child: Image.asset(
                  iconData,
                  color: iconColor,
                ),
              ),
      ),
    );
  }
}