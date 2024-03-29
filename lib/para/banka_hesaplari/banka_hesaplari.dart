import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/para/banka_hesaplari/banka_hesaplari_ekle.dart';
import 'package:flutter/material.dart';

class BankaHesaplariScreen extends StatefulWidget {
  const BankaHesaplariScreen({Key? key}) : super(key: key);

  @override
  State<BankaHesaplariScreen> createState() => _BankaHesaplariScreenState();
}

class _BankaHesaplariScreenState extends State<BankaHesaplariScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bankalar',
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: CustomFAB(
          isSpeedDial: false,
          childrenData: [
            SpeedDialData(
              label: '',
              route: const BankaHesabiEkle(),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
