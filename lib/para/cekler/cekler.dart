import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/para/cekler/cek_cikisi/cek_cikisi_ekle.dart';
import 'package:efaturamobileapp/para/cekler/cek_girisi/cek_cirolama.dart';
import 'package:efaturamobileapp/para/cekler/cek_girisi/cek_girisi_ekle.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import '../../bottom_show_dialog_widget.dart';
import '../../show_dialog_ekle.dart';
import 'cek_girisi/islem_listesi.dart';
import 'cek_girisi/tahsilat_makbuzu.dart';
import 'secenekler/ceklerdetayliarama.dart';

class CeklerScreen extends StatefulWidget {
  const CeklerScreen({Key? key}) : super(key: key);

  @override
  State<CeklerScreen> createState() => _CeklerScreenState();
}

class _CeklerScreenState extends State<CeklerScreen> {
  @override
  Widget build(BuildContext context) {
        double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
         elevation: 0,
        centerTitle: true,
        title: const Text(
          'Çekler', style: TextStyle(color: Colors.black),
        ),
         actions: [ 
          CustomIconButton(
            options: [
              SheetOption(
                icon:const Icon(Icons.filter_alt,color: Colors.black),
                text: 'Detaylı Arama',
                page: const CeklerDetayliArama(),
              ),
               SheetOption(
                icon: Image.asset('assets/icons/excelicon.png',width: 20,height: 20,),
                text: "Excel'e Aktar",
                page: const YeniRaporEkle(),
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
    child: Column(
      children: [ 
       CustomInkWell(
  companyName: 'Deneme Satış Ltd. Şti.',
  status: 'Portföyde',
  number: '123',
  date: 'Vade Tarihi: 16 MAYIS',
  chequeType: 'Müşteri Çeki',
  dueDate: '16 Mayıs',
  amount: '₺1000',
   onTap: () {
                  List<DialogOption> dialogOptions = [
                    DialogOption(
      title: "Çeki Görüntüle",
      onPressed: () {
         Navigator.push( context, MaterialPageRoute( builder: (context) =>const  CeklerScreen(),),);
      },
    ),
    DialogOption(
      title: "Tahsil Et",
      onPressed: () {
         Navigator.push( context, MaterialPageRoute( builder: (context) =>const  TasilatMakbuzuEkle(),),);
      },
    ),
     DialogOption(
      title: "Cirola",
      onPressed: () {
         Navigator.push( context, MaterialPageRoute( builder: (context) =>const  CekCirolamaEkle(),),);
      },
    ),
     DialogOption(
      title: "İşlem Listesi",
      onPressed: () {
         Navigator.push( context, MaterialPageRoute( builder: (context) =>const  IslemListesiScreen(),),);
      },
    ),              
                  ];
                  ShowDialogEkle.showCustomDialog(context, dialogOptions, 'Sıralama');
                },
              ),
   
const Divider(),
    CustomInkWell(
  companyName: 'Deneme2 Satış Ltd. Şti.',
  status: 'Portföyde',
  number: '123',
  date: 'Vade Tarihi: 16 MAYIS',
  chequeType: 'Müşteri Çeki',
  dueDate: '16 Mayıs',
  amount: '₺1000',
   onTap: () {
                  List<DialogOption> dialogOptions = [
                    DialogOption(
      title: "Çeki Görüntüle",
      onPressed: () {
         Navigator.push( context, MaterialPageRoute( builder: (context) =>const  CeklerScreen(),),);
      },
    ),
    DialogOption(
      title: "Ödeme Yap",
      onPressed: () {
         Navigator.push( context, MaterialPageRoute( builder: (context) =>const  TasilatMakbuzuEkle(),),);
      },
    ),
     DialogOption(
      title: "İşlem Listesi",
      onPressed: () {
         Navigator.push( context, MaterialPageRoute( builder: (context) =>const  IslemListesiScreen(),),);
      },
    ),
                  ];
                  ShowDialogEkle.showCustomDialog(context, dialogOptions, 'Sıralama');
                },
              ),           
      ],
    ),
  ),     
            ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        backgroundColor: kButtonColor,
        overlayColor: kButtonColor,
        overlayOpacity: 0.4,
        spaceBetweenChildren: 12,
        spacing: 12,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Çek Çıkışı',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CekCikisiEkle(),
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Çek Girişi',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CekGirisiEkle(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
class CustomInkWell extends StatelessWidget {
  final String companyName;
  final String status;
  final String number;
  final String date;
  final String chequeType;
  final String dueDate;
  final String amount;
  final VoidCallback onTap;

  CustomInkWell({
    required this.companyName,
    required this.status,
    required this.number,
    required this.date,
    required this.chequeType,
    required this.dueDate,
    required this.amount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(companyName, style: const TextStyle(color: Colors.black, fontSize: 16)),
                Text(status, style: const TextStyle(color: Colors.black, fontSize: 16)),
                Text(number, style: const TextStyle(color: Colors.grey, fontSize: 14)),
                Text(date, style: const TextStyle(color: Colors.grey, fontSize: 14)),
                Text(chequeType, style: const TextStyle(color: Colors.grey, fontSize: 14)),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(dueDate, style: const TextStyle(color: Colors.grey, fontSize: 14)),
                  Text(amount, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}