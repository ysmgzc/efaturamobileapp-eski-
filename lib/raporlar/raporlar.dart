import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/raporlar/r_alis_ozeti/r_alis_ozeti.dart';
import 'package:efaturamobileapp/raporlar/r_alis_satis_toplamlari/r_alis_satis_toplamlari.dart';
import 'package:efaturamobileapp/raporlar/r_kdv_raporu.dart';
import 'package:efaturamobileapp/raporlar/r_masraf_ozeti/r_masraf_ozeti.dart';
import 'package:efaturamobileapp/raporlar/r_satis_ozeti/r_satis_ozeti.dart';
import 'package:efaturamobileapp/raporlar/r_siparis_ozeti/r_siparis_ozeti.dart';
import 'package:flutter/material.dart';

class RaporlarScreen extends StatefulWidget {
  const RaporlarScreen({super.key});

  @override
  State<RaporlarScreen> createState() => _RaporlarScreenState();
}

class _RaporlarScreenState extends State<RaporlarScreen> {
  @override
  Widget build(BuildContext context) {
        double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
        Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Raporlar',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
         child: Container(color: Colors.transparent,
           padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05,
              vertical: screenHeight * 0.01,
            ),
            child: Container(
              color: Colors.white,
              child: Column(  
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.03,      
                ),
               const CustomContainer(
                    screen: RSatisOzetiScreen(),
                    title: "Satış Özeti",
                    iconPath: 'assets/icons/drawericon/satisicon.png',
                  ),
                  const Divider(),
                   const CustomContainer(
                    screen: RAlisOzetiScreen(),
                    title: "Alış Özeti",
                    iconPath: 'assets/icons/drawericon/alisicon.png',
                  ),
                
                 const Divider(),
                   const CustomContainer(
                    screen: RMasrafOzetiScreen(),
                    title: "Masraf Özeti",
                    iconPath: 'assets/icons/drawericon/masraficon.png',
                  ),
                   const Divider(),
                    const CustomContainer(
                    screen: RSiparisOzetiScreen(),
                    title: "Sipariş Özeti",
                    iconPath: 'assets/icons/drawericon/siparisicon.png',
                  ),
                   const Divider(),
                     const CustomContainer(
                    screen: RAlisSatisToplamlariScreen(),
                    title: "Alış / Satış Toplamları",
                    iconPath: 'assets/icons/drawericon/alissatistoplamrapor.png',
                  ),
                   const Divider(),
                    const CustomContainer(
                    screen: RKdvRaporuScreen(),
                    title: "KDV Raporu",
                    iconPath: 'assets/icons/drawericon/kdvraporicon.png',
                  ),
                   const Divider(),
                /*    const CustomContainer(
                    screen: IadeRaporu(),
                    title: "İadeler",
                    iconPath: 'assets/icons/drawericon/iaderaporuicon.png',
                  ),*/
               /* const  Divider(),
                 const CustomContainer(
                    screen: DepoStokRaporu(),
                    title: "Depo Stokları",
                    iconPath: 'assets/icons/drawericon/depostokraporicon.png',
                  ),
                 const Divider(),
                   const CustomContainer(
                    screen: StokHareketleriRaporu(),
                    title: "Stok Hareketleri",
                    iconPath: 'assets/icons/drawericon/stokhareketicon.png',
                  ),
                const  Divider(),
                 const CustomContainer(
                    screen: HesapHareketleri(),
                    title: "Hesap Hareketleri",
                    iconPath: 'assets/icons/drawericon/hesaphareketraporicon.png',
                  ),*/
              ]
                     ),
            ),
      ),
    ),);
  }
}

class CustomContainer extends StatelessWidget {
  final Widget screen;
  final String title;
  final String iconPath; 

  const CustomContainer({
    Key? key,
    required this.screen,
    required this.title,
    required this.iconPath, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 3,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
            },
            child: ListTile(
              leading: Image.asset(iconPath), 
              title: Text(
                title,
              ),
              trailing: const Icon(Icons.navigate_next, size: 30.0), 
            ),
          ),
        ],
      ),
    );
  }
}