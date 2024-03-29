import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<XFile?> kameraShowDialogWidget(BuildContext context) {
  return showDialog<XFile?>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Seç', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
        content: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.camera_alt),
                  TextButton(
                    onPressed: () async {
                      XFile? image = await _kameradanResimSec();
                      Navigator.of(context).pop(image);
                    },
                    child: const Text('Kamera', style: TextStyle(color: Colors.black, fontSize: 14)),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  const Icon(Icons.image),
                  TextButton(
                    onPressed: () async {
                      XFile? image = await _galeridenResimSec();
                      Navigator.of(context).pop(image);
                    },
                    child: const Text('Galeri', style: TextStyle(color: Colors.black, fontSize: 14)),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              child: const Text('Vazgeç', style: TextStyle(color: Colors.black, fontSize: 14)),
              onPressed: () {
                Navigator.of(context).pop(null); // Vazgeçildiğinde null döndür.
              },
            ),
          ),
        ],
      );
    },
  );
}

Future<XFile?> _kameradanResimSec() async {
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: ImageSource.camera);
  return image;
}

Future<XFile?> _galeridenResimSec() async {
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  return image;
}
