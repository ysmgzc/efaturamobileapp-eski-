
import 'package:efaturamobileapp/bottom_app_bar_desing.dart';
import 'package:efaturamobileapp/detayli_arama_screen.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';

class HizmetlerDetayliArama extends StatefulWidget {
  const HizmetlerDetayliArama({super.key});

  @override
  State<HizmetlerDetayliArama> createState() => _HizmetlerDetayliAramaState();
}

class _HizmetlerDetayliAramaState extends State<HizmetlerDetayliArama> {
  bool value = false;
    TextEditingController dateInput = TextEditingController();
     String? selectedValue;

  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
         iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
         elevation: 0,
        centerTitle: true,
        title:const Text(
          'Detaylı Arama',style: TextStyle(color: Colors.black),
        ),
      ),
    
      body: SingleChildScrollView(
        padding:const EdgeInsets.only(top: 10),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
        child:Column(children: [
//------------------------"Tür"------------------------------------------
               DetayliAramaWidget(
                altMetin:"Tümü",
              metin: "Tür",
               onTap: () {
                    showDialog(
  context: context,
  builder: (BuildContext context) {
    return ShowDialogCheckBox(
      dialogTitle: "Tür",
      checkboxTexts:const [
        "Alınan Hizmet",
        "Verilen Hizmet",
      ],
    );
  },
);  
      },  ),
//---------------------Durumu----------------------------------------------------------
       DetayliAramaWidget(
            metin: "Durumu",
            altMetin:"Tümü",
           onTap: () {
       showDialog(
  context: context,
  builder: (BuildContext context) {
    return ShowDialogCheckBox(
      dialogTitle: "Durumu",
      checkboxTexts:const [
        "Aktif",
        "Pasif",
      ],
    );
  },
); }, ),
//---------------------Kategori--------------------------------------------------------------
          DetayliAramaWidget(
            metin: "Kategori",
            altMetin:"Tümü",
            onTap: () { showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title:const Text('Kategori'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        heightFactor: 0.07,
                      ),
              const  Divider(),
                
              ],
            ),
          ),
           actions: [
        TextButton(
          child:const Text('Vazgeç'),
          onPressed: () {
            setState(() {
              dateInput.text = '';
            });
          },
        ),
        TextButton(
          child:const Text('Kaydet'),
          onPressed: () {
            Navigator.of(context).pop(); 
        },
        ),
      ],
        );
      },
    );
  },
          ),



        ],)
           
        ),
      ),
    bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        text: "SONUÇLARI GÖSTER",
        backgroundColor: Colors.blue,
          ),
    );
  }

 
}