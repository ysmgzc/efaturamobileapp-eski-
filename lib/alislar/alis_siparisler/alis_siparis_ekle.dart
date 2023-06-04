import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/person_image_border.dart';
import 'package:efaturamobileapp/toplam_tutar.dart';
import 'package:efaturamobileapp/urunekleborder.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../custom_pop_menu.dart';
import '../../musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/musteriler_tedarikciler.dart';
import '../../stoklar_ve_hizmetler/urunler/urun_ekle.dart';


class AlisSiparisEkle extends StatefulWidget {
  const AlisSiparisEkle({Key? key}) : super(key: key);

  @override
  State<AlisSiparisEkle> createState() => _AlisSiparisEkleState();
}

class _AlisSiparisEkleState extends State<AlisSiparisEkle> {
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
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Sipariş (KDV Hariç)',
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false, // Geri düğmesini kaldırır
      ),
backgroundColor: Colors.white,
body: SingleChildScrollView(
  child: Column(
    children: [
      Padding(
       padding: const EdgeInsets.only(top: 15),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                  child: PersonImageBorder(  
                    screenHeight: screenHeight, 
                    screenWidth: screenWidth, 
                    route:const MusterilerTedarikcilerScreen(), 
                    text: "Tedarikçi ekle",
                    assetPath: 'assets/icons/personicon.png',
                    ),
                ),
               const SizedBox(height: 3,),
                 Padding(
                        padding: const EdgeInsets.only(left: 30),
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
      
                    ],
                  ),
                  Expanded(
                    child: Container(
                     // height: screenHeight * 0.35,
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
                            height: 5,
                          ),
                        const  Align(
                            alignment: Alignment.center,
                            child: Text(
                              '0000000000000001',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: yTextColor2),
                            ),
                          ),
                        const SizedBox( height: 5,),
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
                           const Align(
                            alignment: Alignment.center,
                            child: Text(
                               '---',
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                            ),
                          ),
                        const Divider( indent: 45,
                      endIndent: 40,),
                        const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'SİPARİŞ TARİHİ',
                              style: TextStyle(fontSize: 13, color:Colors.black,fontWeight: FontWeight.bold),
                            ),
                          ),
                           const SizedBox( height: 5,),
                          Align(
                            alignment: Alignment.center,
                            child:Text(
                                DateFormat('dd MM yyyy').format(DateTime.now()),
                                style:const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:yTextColor),
                              ),
                          ),
                        const  SizedBox(height: 80,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
           UrunEkleBorder(
          screenHeight: screenHeight, 
          screenWidth: screenWidth, 
          route:const  UrunEkle(), 
          text: "Ürün / Hizmet Ekle",
        ),
     const Divider(),
     const Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 30,top: 20,right: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TOPLAM',
                    style: TextStyle(fontSize: 16, color: yTextColor,decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'TUTAR',
                    style: TextStyle(fontSize: 16, color: yTextColor,decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            
          ),
                    ToplamTutar(
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

    ],
  ),
        
      ),
    );
  }
}
