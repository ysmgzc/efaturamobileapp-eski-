import 'package:efaturamobileapp/alislar/alis_siparisler/alis_siparis_ekle.dart';
import 'package:efaturamobileapp/alislar/alis_siparisler/alis_siparis_faturasi_save.dart';
import 'package:efaturamobileapp/alislar/alis_siparisler/secenekler/alissiparisdetayliarama.dart';
import 'package:efaturamobileapp/bottom_app_bar_widget_toplam.dart';
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/siralama_islemi_widget.dart';
import 'package:efaturamobileapp/verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';
import 'package:flutter/material.dart';
import '../../bottom_show_dialog_widget.dart';
import '../../home_screen/home_page_screen.dart';
import '../../show_dialog_ekle.dart';

class AlisSiparislerScreen extends StatefulWidget {
  const AlisSiparislerScreen({super.key});

  @override
  State<AlisSiparislerScreen> createState() => _AlisSiparislerScreenState();
}

class _AlisSiparislerScreenState extends State<AlisSiparislerScreen> {
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer:const DrawerBar(),
      //bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
          iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
         elevation: 0,
        centerTitle: true,
        title:const Text(
          'Alış Siparişleri',style: TextStyle(color: Colors.black),
        ),
         
         actions: [ 
          CustomIconButton(
            options: [
              SheetOption(
                icon:const Icon(Icons.filter_alt,color: Colors.black),
                text: 'Detaylı Arama',
                page: const AlisSiparisDetayliArama(),
              ),
               SheetOption(
                icon: const Icon(Icons.swap_vert, color: Colors.black),
                text: 'Sıralama',
               onTap: () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SiralamaIslemi(
                      onSort: (sortedItems) {
                      },
                      optionIds: [3, 4, 5, 6, 7, 8],
                    );
                  },
                );
              },
              ),
               SheetOption(
                icon: Image.asset('assets/icons/excelicon.png',width: 20,height: 20,),
                text: "Excel'e Aktar",
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.delete,color: Colors.black),
                text: 'Çıkış',
                page: const HomePageScreen(),
              ),
            ],
          )
        ],

      ),
      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
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
              const SearchField(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
            Container(
    padding: const EdgeInsets.all(8.0),
    decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius:const BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    offset:const Offset(0, 0),
                    blurRadius: 20,
                    color:  Colors.grey.shade300,
                  ),
                ],
              ),
                child:const Column(
                  children: [ 
                     ContainerWidget(
                        tedarikciAdi:'Personel Ahmet Usta' ,
                        tedarikciNo: '0000000000001',
                        tarih: '24 Nisan',
                        paraBirimi: '₺1000',
                        page: AlisSiparisFaturasiSave(),
                        ),
                  ],
                ),     
          )],
          ),
        ),
      ),
         bottomNavigationBar:const CustomBottomAppBarToplam(
  firstText: "TOPLAM",
  secondText: "₺1000",
),
 floatingActionButton: CustomFAB(
    isSpeedDial: false,
   childrenData: [
     SpeedDialData(
        label: '',
        route: AlisSiparisEkle(metin: ""),
      ),
   ],
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}

