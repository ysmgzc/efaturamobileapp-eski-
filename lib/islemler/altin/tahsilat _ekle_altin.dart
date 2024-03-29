import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/components/dropdownmenu_widget.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/islemler/components/rectangle_button_widget.dart';
import 'package:efaturamobileapp/islemler/components/sliding_widget.dart';
import 'package:efaturamobileapp/islemler/components/texfield_widget.dart';
import 'package:flutter/material.dart';

class TahsilatEkleAltin extends StatefulWidget {
  //String appBarBaslik;
  TahsilatEkleAltin({super.key
      // required this.appBarBaslik,
      });

  @override
  State<TahsilatEkleAltin> createState() => _TahsilatEkleAltinState();
}

class _TahsilatEkleAltinState extends State<TahsilatEkleAltin> {
  TextEditingController dateInput = TextEditingController();
  String? selectedValue;
  String? selectedTahsilatTuru;
  String? selectedTahsilatTipi;
  List<String> tahsilatTuru = <String>[
    'Nakit',
    'Stok Girişi',
    'Banka',
  ];
  Map<String, List<String>> tahsilatTipiOptions = {
    'Nakit': [
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
      'KGS'
    ],
    'Stok Girişi': ['Külçe/Has', 'Hurda', 'Gram Altın', 'Ziynet/Lira'],
    'Banka': ['Banka 1', 'Banka 2'],
  };
  List<String> Nakit = <String>[
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
  List<String> kulceHas = [
    '24K 999.9',
    '24K 999',
    '24K 995',
  ];
  List<String> kulceHasBrim = <String>[
    'GR',
    'KG',
  ];
  bool showDoneIcon = true;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ürün & Stok Ekle",
          //  widget.appBarBaslik,
        ),
        actions: [
          if (showDoneIcon)
            CircleIconAltin(
              iconData: Icons.done,
              iconColor: color8,
              color: color6,
              onPressed: () {
                setState(() {
                  showDoneIcon = false;
                });
              },
            ),
          if (!showDoneIcon)
            CircleIconAltin(
              iconData: 'assets/icons/newicon/delete.png',
              iconpadding: 8,
              iconColor: color8,
              color: color6,
              onPressed: () {},
            ),
          if (!showDoneIcon)
            CircleIconAltin(
              iconData: Icons.edit,
              iconColor: color8,
              color: color6,
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
                          RedButtonWidget(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight),
                          SizedBox(
                            width: 5,
                          ),
                          RedButtonWidget(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight),
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
                                        "Belge Numarası",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: color7,
                                        ),
                                      ),
                                      Text(
                                        "#T-20230001",
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
                                        "Tahsilat Tarihi",
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
                                        "Toplam Tahsilat Miktar",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: color7,
                                        ),
                                      ),
                                      Text(
                                        "140,400",
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
                                        "94,900",
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
                    ],
                  ),
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight,
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
                      Row(
                        children: [
                          CustomDropdownButton(
                            items: tahsilatTuru,
                            text: "Tahsilat Türü",
                            findText: "Türü seçiniz",
                            onChanged: (value) {
                              setState(() {
                                selectedTahsilatTuru = value;
                                selectedTahsilatTipi = null;
                              });
                            },
                            selectedValue: selectedTahsilatTuru,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          CustomDropdownButton(
                            items:
                                tahsilatTipiOptions[selectedTahsilatTuru] ?? [],
                            text: "Tahsilat Tipi",
                            findText: "Tipi seçiniz",
                            onChanged: (value) {
                              setState(() {
                                selectedTahsilatTipi = value;
                              });
                            },
                            selectedValue: selectedTahsilatTipi,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          if (selectedTahsilatTuru != "Nakit")
                            CustomDropdownButton(
                              items: kulceHas,
                              text: "Tahsilat Seçimi",
                              findText: "Birim Seçiniz",
                            ),
                          if (selectedTahsilatTuru == "Nakit")
                            Expanded(
                              child: TextFieldWidget(
                                text: "Miktar*",
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      if (selectedTahsilatTuru != "Nakit")
                        Row(
                          children: [
                            TextFieldWidget(text: "Miktar*"),
                            const SizedBox(
                              width: 4,
                            ),
                            CustomDropdownButton(
                              items: kulceHasBrim,
                              text: "Birim*",
                              findText: "Tipi seçiniz",
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            TextFieldWidget(text: "Milyem*"),
                          ],
                        ),
                      SizedBox(height: screenHeight * 0.2),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SlidingPanel(
            text1: false,
            button: true,
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
