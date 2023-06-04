
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/home_screen/home_page_screen.dart';
import 'package:efaturamobileapp/interaktif_vergi_dairesi/interaktifvergidairesidetayliarama.dart';
import 'package:flutter/material.dart';

import '../bottom_show_dialog_widget.dart';
import '../search_field.dart';
import '../show_dialog_ekle.dart';
import '../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

class InteraktifVergiDairesiScreen extends StatelessWidget {
  const InteraktifVergiDairesiScreen({super.key});

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
            'İnteraktif Vergi Dairesi',
            style: TextStyle(color: Colors.black),
          ),
        actions: [ 
          CustomIconButton(
            options: [
              SheetOption(
                icon:const Icon(Icons.filter_alt,color: Colors.black),
                text: 'Detaylı Arama',
                page: const InteraktifVergiDairesiDetayliArama(),
              ),
              SheetOption(
                icon:const Icon(Icons.swap_vert,color: Colors.black),
                text: 'Sıralama',
                 onTap: () {
                  List<DialogOption> dialogOptions = [
                    DialogOption(
                      title: 'Tarihe göre (En yeni)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Tarihe göre (En eski)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Tutara göre (En yüksek)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Tutara göre (En düşük)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Gönderen unvanı (A-Z)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Gönderen unvanı (Z-A)',
                      onPressed: () {},
                    ),
                  ];
                  ShowDialogEkle.showCustomDialog(context, dialogOptions, 'Sıralama');
                },
              ),
               SheetOption(
                icon: Image.asset('assets/icons/excelicon.png',width: 20,height: 20,),
                text: "Excel'e Aktar",
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.delete,color: Colors.black),
                text: 'Sil',
                page: const HomePageScreen(),
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
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                const SearchField(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ),
        ));
  }
}