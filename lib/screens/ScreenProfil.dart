import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:profile_try_1/controller/profil_controller.dart';
import '../model/profil_model.dart';

final ProfilController controller = Get.put(ProfilController());
Profil profil = controller.profil[0];
var profillength = controller.profil.length;
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
      appBar: AppBar(
        title: Text("Profil"),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Container(
                margin: EdgeInsets.all(20.0),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F736x%2F25%2F49%2F82%2F25498264b4b0e7bd98587789c0e4ffaa.jpg&f=1&nofb=1'),
                      fit: BoxFit.fill),
                  border: Border.all(
                      color: Color(0xFFFFFF),
                      width: 10.0,
                      style: BorderStyle.solid),
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
                      Text("Persönliche Daten",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 25)),
                      Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Text(
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
                            Text(
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
                            Text(
                              "Adresse: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(adresse),
                          ],
                        ),
                      ),
                    ],
                  ))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.home),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.white,
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
