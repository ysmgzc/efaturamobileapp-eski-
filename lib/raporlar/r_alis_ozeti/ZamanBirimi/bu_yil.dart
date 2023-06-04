import 'package:flutter/material.dart';

class AlisBuYilScreen extends StatefulWidget {
  const AlisBuYilScreen({Key? key}) : super(key: key);

  @override
  State<AlisBuYilScreen> createState() => _AlisBuYilScreenState();

}

class _AlisBuYilScreenState extends State<AlisBuYilScreen> {
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Bu Yıl',
          style: TextStyle(color: Colors.black),
        ),
    actions: [
     IconButton(
    icon: Image.asset('assets/icons/paylasicon.png'),
    onPressed: () {},
  ),
  ],

      ),

      backgroundColor: Colors.white,
      body:Container(),
       
    );
  }
}
