import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import '../global/glovar.dart';

class ScreenProfilSettings extends StatelessWidget {
  const ScreenProfilSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Glovar.grey,
          title: Text("Profil Einstellungen KEKW"),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                child: Column(
              children: [
                Center(
                  child: Text("KEK"),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Chill Mal"),
                )
              ],
            ))
          ],
        ),
        ),
    );
  }
}
