import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/musteriler_tedarikciler.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

enum ParaDurumu { giris, cikis }

class VirmanEkle extends StatefulWidget {
  const VirmanEkle({Key? key}) : super(key: key);

  @override
  State<VirmanEkle> createState() => _VirmanEkleState();
}

class _VirmanEkleState extends State<VirmanEkle> {
  TextEditingController dateInput = TextEditingController();
  // ParaDurumu? _seciliParaDurumu;
  List<String> items1 = <String>[
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
          'Virman',
        ),
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
              const Text('VIRMAN YAPAN',
                  style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              Center(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [
                        Colors.grey.shade200,
                        Colors.grey.shade100,
                        Colors.grey.shade50,
                        Colors.white70,
                      ],
                    ),
                  ),
                  child: SizedBox(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.07,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "PERSONEL AHMET USTA",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(height: 8),
              const Text('VIRMAN YAPILAN',
                  style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              Center(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [
                        Colors.grey.shade200,
                        Colors.grey.shade100,
                        Colors.grey.shade50,
                        Colors.white70,
                      ],
                    ),
                  ),
                  child: SizedBox(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.07,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(MusterilerTedarikcilerScreen(
                          secim: 1,
                          appBarBaslik: "",
                        ));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide.none,
                          ),
                        ),
                      ),
                      child: Container(),
                    ),
                  ),
                ),
              ),
              const Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('TUTAR *',
                          style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        widthFactor: 0.6,
                        hintText: '0,00',
                      ),
                    ],
                  ),
                  CustomPopMenuWidget(
                    width: screenWidth * 0.3,
                    title: "PARA BİRİMİ",
                    menuWidth: screenWidth * 0.3,
                    selectedValue: "TL",
                    items: items1,
                    menuItemsWidth: screenWidth * 0.2,
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 8),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('TARİH',
                        style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.topLeft,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            colors: [
                              Colors.grey.shade200,
                              Colors.grey.shade100,
                              Colors.grey.shade50,
                              Colors.white70,
                            ],
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            final DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime.now(),
                            );

                            if (pickedDate != null) {
                              setState(() {
                                dateInput.text =
                                    DateFormat('dd/MM/yyyy').format(pickedDate);
                              });
                            }
                          },
                          child: SizedBox(
                            width: screenWidth * 0.4,
                            height: screenHeight * 0.07,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                dateInput.text.isNotEmpty
                                    ? dateInput.text
                                    : DateFormat('  dd/MM/yyyy')
                                        .format(DateTime.now()),
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: 8),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('MAKBUZ/BELGE NO',
                        style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    TextFieldDecoration(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: 8),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('AÇIKLAMA',
                        style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    TextFieldDecoration(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      heightFactor: 0.14,
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        saveButtonBackgroundColor: Colors.blue,
      ),
    );
  }
}
