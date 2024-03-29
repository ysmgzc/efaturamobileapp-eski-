import 'package:efaturamobileapp/bottom_show_dialog_widget.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:efaturamobileapp/toplam_tutar_save.dart';
import 'package:efaturamobileapp/urun_ekle_border_save_animasyonsuz.dart';
import 'package:efaturamobileapp/verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../stoklar_ve_hizmetler/urunler/urun_hizmet_sec_screen.dart';

enum OdemeDurumu { odendi, odenecek }

class HizmetMasrafSave extends StatefulWidget {
  const HizmetMasrafSave({Key? key}) : super(key: key);

  @override
  State<HizmetMasrafSave> createState() => _HizmetMasrafSaveState();
}

class _HizmetMasrafSaveState extends State<HizmetMasrafSave> {
  TextEditingController dateInput = TextEditingController();
  OdemeDurumu? _seciliOdemeDurumu;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hizmet & Masraf',
        ),
        actions: [
          CustomIconButton(
            options: [
              SheetOption(
                icon: const Icon(Icons.currency_lira, color: Colors.black),
                text: 'Ödeme Ekle',
                page: const YeniRaporEkle(),
              ),
              SheetOption(
                icon: const Icon(Icons.find_in_page, color: Colors.black),
                text: 'Muhasebe Notu',
                page: const YeniRaporEkle(),
              ),
              SheetOption(
                icon: const Icon(Icons.copy_sharp, color: Colors.black),
                text: 'Kopyala',
                page: const YeniRaporEkle(),
              ),
              SheetOption(
                icon: const Icon(Icons.edit_document, color: Colors.black),
                text: 'Düzenle',
                page: const YeniRaporEkle(),
              ),
              SheetOption(
                icon: const Icon(Icons.delete, color: Colors.black),
                text: 'Sil',
                page: const YeniRaporEkle(),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: IgnorePointer(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05,
              vertical: screenHeight * 0.01,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('MAL/HİZMET VEREN',
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
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('FİŞ & FATURA NO',
                              style:
                                  TextStyle(color: yTextColor, fontSize: 14)),
                          const SizedBox(height: 8),
                          TextFieldDecoration(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                            widthFactor: 0.42,
                            hintText: "00001",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 2),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('FİŞ & FATURA TARİHİ',
                                style:
                                    TextStyle(color: yTextColor, fontSize: 14)),
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
                                    final DateTime? pickedDate =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime.now(),
                                    );

                                    if (pickedDate != null) {
                                      setState(() {
                                        dateInput.text =
                                            DateFormat('dd/MM/yyyy')
                                                .format(pickedDate);
                                      });
                                    }
                                  },
                                  child: SizedBox(
                                    width: screenWidth * 0.40,
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
                    ),
                  ],
                ),
                const Divider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    const Text("Ödeme Durumu",
                        style: TextStyle(color: yTextColor)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile<OdemeDurumu>(
                            contentPadding: EdgeInsets.zero,
                            title: const Text("Ödendi"),
                            value: OdemeDurumu.odendi,
                            activeColor: color6,
                            groupValue: _seciliOdemeDurumu,
                            onChanged: (OdemeDurumu? value) {
                              if (value != null) {
                                setState(() {
                                  _seciliOdemeDurumu = value;
                                });
                              }
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile<OdemeDurumu>(
                            contentPadding: EdgeInsets.zero,
                            title: const Text("Ödenecek"),
                            value: OdemeDurumu.odenecek,
                            activeColor: color6,
                            groupValue: _seciliOdemeDurumu,
                            onChanged: (OdemeDurumu? value) {
                              if (value != null) {
                                setState(() {
                                  _seciliOdemeDurumu = value;
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(),
                const Text('KASA/BANKA ADI *',
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
                          "TL KASA",
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
                const SizedBox(height: 8),
                const Divider(),
                UrunEkleBorderSaveAnimasyonsuz(
                  bottomPadding: 47,
                  height: 0.19,
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  route: const UrunHizmetSecScreen(),
                  text: "Ürün / Hizmet Ekle",
                  baslik: "DİĞER GİDERLER",
                  altbaslikBirim: '1 ADET',
                  altbaslikFiyat: "5,00TL",
                  ustText: "KDV Hariç",
                  ustTextFiyat: '₺5,00',
                  araToplamFiyat: '₺20,00',
                  sagText: "KDV(%18)",
                  sagTextFiyat: '₺0,70',
                ),
                const SizedBox(height: 8),
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('KATEGORİ',
                          style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const Divider(),
                const SizedBox(height: 8),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: ToplamTutarSave(
                        textLabels: [
                          'Ara Toplam:',
                          'İndirim:',
                          'Toplam İndirim:',
                          'Ek Vergi:',
                          'Toplam KDV:',
                          'Genel Toplam:',
                        ],
                        textValues: [
                          '₺0.00',
                          '₺0.00',
                          '₺0.00',
                          '₺0.00',
                          '₺0.00',
                          '₺0.00',
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
