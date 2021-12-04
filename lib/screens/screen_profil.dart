import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:profile_try_1/controller/profil_controller.dart';
import 'package:profile_try_1/screens/screen_profil_settings.dart';
import '../model/profil_model.dart';
import '../global/glovar.dart';

final ProfilController controller = Get.put(ProfilController());
Profil profil = controller.profil[0];
var email = profil.kontakt?.email;
var tel = profil.kontakt?.tel;
var strasse = profil.adresse?.strasse;
var ort = profil.adresse?.ort;
var hausnummer = profil.adresse?.hausnummer;
var adresse = strasse! + " " + hausnummer! + ", " + ort!;

class ScreenProfil extends StatelessWidget {
  const ScreenProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Profil:");
    print(adresse);
    return Scaffold(
      appBar:
          AppBar(title: Text("Profil"), backgroundColor: Glovar.grey, actions: [
        IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Get.to(ScreenProfilSettings());
            }),
        IconButton(icon: Icon(Icons.settings), onPressed: () {}),
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(20.0),
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://c.tenor.com/khnabtPdWnsAAAAM/peepo-d-peepo.gif'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              width: 500,
              child: Text(
                profil.vorname! + ' ' + profil.name!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0, top: 30.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          const Text("Persönliche Daten",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 25
                              ),
                          ),
                          IconButton(
                              icon: Icon(Icons.edit),
                              color: Glovar.grey,
                              onPressed: () {},
                          ),

                        ],

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          const Text(
                            "E-Mail: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(email!),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          const Text(
                            "Telefon: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(tel!),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          const Text(
                            "Adresse: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(adresse),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0, top: 30.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          const Text("Fähigkeiten",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 25
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.edit),
                            color: Glovar.grey,
                            onPressed: () {},
                          ),

                        ],

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          const Text(
                            "E-Mail: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(email!),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          const Text(
                            "Telefon: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(tel!),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          const Text(
                            "Adresse: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(adresse),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0, top: 30.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Fähigkeiten",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 25)),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          const Text(
                            "E-Mail: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(email!),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          const Text(
                            "Telefon: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(tel!),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          const Text(
                            "Adresse: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(adresse),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Glovar.black,
        child: Icon(Icons.home),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          backgroundColor: Glovar.grey,
          selectedItemColor: Glovar.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Suchen',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
