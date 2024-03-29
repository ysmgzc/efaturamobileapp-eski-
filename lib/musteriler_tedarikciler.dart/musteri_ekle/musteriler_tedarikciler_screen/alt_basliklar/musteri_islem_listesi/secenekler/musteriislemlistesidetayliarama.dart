import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:efaturamobileapp/detayli_arama_screen.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';

class MusteriTedarikciIslemListesiDetayliArama extends StatefulWidget {
  const MusteriTedarikciIslemListesiDetayliArama({super.key});

  @override
  State<MusteriTedarikciIslemListesiDetayliArama> createState() =>
      _MusteriTedarikciIslemListesiDetayliAramaState();
}

class _MusteriTedarikciIslemListesiDetayliAramaState
    extends State<MusteriTedarikciIslemListesiDetayliArama> {
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
        title: const Text(
          'Detaylı Arama',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05,
              vertical: screenHeight * 0.02,
            ),
            child: Column(
              children: [
//----------------------Tarih-------------------------------------------------------
                DetayliAramaWidget(
                  metin: "Tarih",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomDatePickerDialog(
                          titleText: 'Tarih',
                          startText: 'Başlangıç Tarihini Seç',
                          endText: 'Bitiş Tarihini Seç',
                        );
                      },
                    );
                  },
                ),
//---------------------Vade Tarihi-------------------------------------------------
                DetayliAramaWidget(
                  metin: "Vade Tarihi",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomDatePickerDialog(
                          titleText: 'Tarih',
                          startText: 'Başlangıç Tarihini Seç',
                          endText: 'Bitiş Tarihini Seç',
                        );
                      },
                    );
                  },
                  altMetin: "Tümü",
                ),
//------------------------"İşlem Tipi"------------------------------------------
                DetayliAramaWidget(
                  altMetin: "Tümü",
                  metin: "İşlem Tipi",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const ShowDialogCheckBox(
                          dialogTitle: "İşlem Tipi",
                          checkboxTexts: [
                            "Gider",
                            "Ödeme",
                            "Tahsilat",
                            "Borç/Alacak Kaydı",
                            "Açılış Bakiyesi",
                            "Satış Siparişi",
                            "Alınan Serbest\nMeslek Makbuzu",
                            "Çek Tahsili",
                            "Verilen Serbest\nMeslek Makbuzu",
                            "Satış Faturası",
                            "Satınalma Faturası",
                            "Çek Girişi",
                            "Virman",
                            "Çek Çıkış(Ciro)",
                            "Giden Havaleler",
                            "Gelen Havaleler",
                            "Alınan Hizmet",
                            "Alış Siparişi",
                            "Alış Faturası İade",
                            "Çek Çıkışı",
                          ],
                        );
                      },
                    );
                  },
                ),
//----------------------Tutar------------------------------------------------------
                DetayliAramaWidget(
                  metin: "Tutar",
                  altMetin: "Tümü",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Tutar'),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('MİN TUTAR',
                                    style: TextStyle(
                                        color: yTextColor, fontSize: 14)),
                                const SizedBox(height: 8),
                                TextFieldDecoration(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  heightFactor: 0.07,
                                  hintText: "0,00",
                                ),
                                const Divider(),
                                const Text('MAX TUTAR',
                                    style: TextStyle(
                                        color: yTextColor, fontSize: 14)),
                                const SizedBox(height: 8),
                                TextFieldDecoration(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  heightFactor: 0.07,
                                  hintText: "0,00",
                                ),
                                const Divider(),
                                CustomPopMenuWidget(
                                  width: screenWidth * 0.65,
                                  title: "PARA BİRİMİ",
                                  menuWidth: screenWidth * 0.65,
                                  selectedValue: "TL",
                                  items: items,
                                  menuItemsWidth: screenWidth * 0.65,
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              child: const Text('Temizle'),
                              onPressed: () {
                                setState(() {
                                  dateInput.text = '';
                                });
                              },
                            ),
                            TextButton(
                              child: const Text('Kaydet'),
                              onPressed: () {
                                Navigator.of(context)
                                    .pop(); // Dialog penceresini kapat
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            )),
      ),
      bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        saveButtonText: "SONUÇLARI GÖSTER",
        saveButtonBackgroundColor: Colors.blue,
      ),
    );
  }
}
