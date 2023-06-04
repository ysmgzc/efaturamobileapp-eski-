import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/secenek_buton.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../bottom_show_dialog_widget.dart';
import '../../custom_pop_menu.dart';
import '../../person_image_border_save.dart';
import '../../stoklar_ve_hizmetler/urunler/urun_ekle.dart';
import '../../toplam_tutar_save.dart';
import '../../urun_ekle_border_save_animasyonsuz.dart';
import '../../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';


class AlisSiparisFaturasiSave extends StatefulWidget {
  const AlisSiparisFaturasiSave({Key? key}) : super(key: key);

  @override
  State<AlisSiparisFaturasiSave> createState() => _AlisSiparisFaturasiSaveState();
}

class _AlisSiparisFaturasiSaveState extends State<AlisSiparisFaturasiSave> {
   String? selectedValue;
  List<String> items = <String>[
  'TL',
  'AZM',
  'CHF',
  'CNY',
  'EUR',
  'USD',
  'KGS',
];
  TextEditingController dateInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        actionsIconTheme:const IconThemeData(color: Colors.black),
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Sipariş (KDV Hariç)',
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false, // Geri düğmesini kaldırır
         actions: [ 
          CustomIconButton(
            options: [
               SheetOption(
                icon:const Icon(Icons.find_in_page,color: Colors.black),
                text: 'Fatura Oluştur',
                page: const YeniRaporEkle(),
              ),
              SheetOption(
                icon:const Icon(Icons.send,color: Colors.black),
                text: 'Gönder',
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.print,color: Colors.black),
                text: 'Yazdır',
                page: const YeniRaporEkle(),
              ),
              SheetOption(
                icon:const Icon(Icons.cancel_outlined,color: Colors.red),
                text: 'Siparişi iptal et',
                page: const YeniRaporEkle(),
              ),
              SheetOption(
                icon:const Icon(Icons.attach_file,color: Colors.black),
                text: 'İlişkili Faturalar',
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.edit_document,color: Colors.black),
                text: 'Düzenle',
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.delete,color: Colors.black),
                text: 'Sil',
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.copy_sharp,color: Colors.black),
                text: 'Kopyala',
                page: const YeniRaporEkle(),
              ),
            ],
          )
        ],
      ),
backgroundColor: Colors.white,
body: SingleChildScrollView(
  child: Column(
    children: [
      Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
                child: PersonImageBorderSave(  
                  screenHeight: screenHeight, 
                  screenWidth: screenWidth,
                  text: "Personel Ahmet Usta",
                  assetPath: 'assets/icons/persongreenicon.png',
                  ),
              ),
               IgnorePointer(
                 child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 3),
                        child: CustomPopMenuWidget(
                        width: screenWidth * 0.45,
                        height: screenHeight * 0.15,
                        title: "DÖVİZ",
                        menuWidth: screenWidth * 0.4,
                        selectedValue: "TL",
                        items: items,
                        menuItemsWidth: screenWidth * 0.2,
                        dividerIndent: 35,  
                        dividerEndIndent: 45,  
                        showDivider: true,  
                            ),
                      ),
               ),

                  ],
                ),
                Expanded(
                  child: Container(
                   // height: screenHeight * 0.34,
                   // width: screenWidth * 0.47,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                     const   Align(
                          alignment: Alignment.center,
                          child: Text(
                            'SİPARİŞ NUMARASI',
                            style: TextStyle(fontSize: 14, color: Color(0XFFCE4D56), fontWeight: FontWeight.bold),
                          ),
                        ),
                      const  SizedBox(
                          height: 8,
                        ),
                      const  Align(
                          alignment: Alignment.center,
                          child: Text(
                            '0000000000000001',
                            style: TextStyle(fontSize: 14,color: yTextColor2),
                          ),
                        ),
                      const SizedBox( height: 8,),
                     const Divider( indent: 45,
                    endIndent: 40,),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                             'TEDARİKÇİ SİPARİŞ\nNUMARASI',
                              textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Color(0XFFCE4D56), fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox( height: 8,),
                         const Align(
                          alignment: Alignment.center,
                          child: Text(
                             '---',
                            style: TextStyle(fontSize: 14,color: yTextColor),
                          ),
                        ),
                        const SizedBox( height: 8,),
                      const Divider( indent: 45,
                    endIndent: 40,),
                      const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'SİPARİŞ TARİHİ',
                            style: TextStyle(fontSize: 13, color:Colors.black),
                          ),
                        ),
                         const SizedBox( height: 5,),
                        Align(
                          alignment: Alignment.center,
                          child:Text(
                              DateFormat('dd MM yyyy').format(DateTime.now()),
                              style:const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:yTextColor),
                            ),
                        ),SizedBox(height: 50,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SeceneklerButton(),
             const SizedBox(height: 20,),
           UrunEkleBorderSaveAnimasyonsuz(
          screenHeight: screenHeight, 
          screenWidth: screenWidth, 
          route:const  UrunEkle(), 
          text: "Ürün / Hizmet Ekle",
          baslik: "Tekstil Hammade",
          altbaslikBirim: '100 KİLOGRAM',
          altbaslikFiyat: "25,00TL",
          ustText: "KDV(%18)",
           altText: "EK VERGİ",
          ustTextFiyat: '₺450,00',
          altTextFiyat: '₺0,00',
          sagTextFiyat: '₺0,00',
          araToplamFiyat: '₺20,00',
          sagText: "İNDİRİM",
        ),
      Padding(
              padding:const  EdgeInsets.only(top: 20),
              child: Container(
                height: screenHeight * 0.07,
                  width: screenWidth * 0.94,
                child:const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Fatura açıklaması; ",
                        style: TextStyle(
                          fontSize: 14,color: yTextColor,fontWeight: FontWeight.bold
                        ))),
              ),
            ),
      const ToplamTutarSave(
              textLabels: [
                'Ara Toplam:',
                'İndirim:',
                'Toplam İndirim:',
                'Toplam:',
                'Ek Vergi:',
                'Toplam KDV:',
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

    ],
  ),
        
      ),
    );
  }
}
