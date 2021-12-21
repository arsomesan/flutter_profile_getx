import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:profile_try_1/controller/profil_controller.dart';
import 'package:profile_try_1/model/profil_model.dart';
import 'package:profile_try_1/global/glovar.dart';
import 'package:profile_try_1/screens/screen_profil.dart';
import 'package:profile_try_1/utils/user_simple_preferences.dart';





class ScreenProfilSettings extends StatefulWidget {
  ScreenProfilSettings({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfilSettingsState();
  }

}


class ProfilSettingsState extends State<ScreenProfilSettings> {
  ProfilSettingsState();



  final NameController = TextEditingController();
  final EmailController = TextEditingController();

  @override
  void dispose() {
    NameController.dispose();
    EmailController.dispose();
    super.dispose();
  }

  bool nameCheck = false;
  bool emailCheck = false;


  @override
  Widget build(BuildContext context) {
    var name = (UserSimplePreferences.getName()) ?? "test";
    var email = (UserSimplePreferences.getEmail()) ?? "test";
    var tel = (UserSimplePreferences.getTelefon()) ?? "test";
    var adresse = (UserSimplePreferences.getAdresse()) ?? "test";
    var stadt = (UserSimplePreferences.getStadt()) ?? "test";
    var bild = (UserSimplePreferences.getPicture()) ?? "https://bit.ly/3JkoNKa";
    return Scaffold(
      appBar: AppBar(
          title: Text("Profil bearbeiten"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_sharp),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ScreenProfil()),
              );
            },
          ),
          backgroundColor: Glovar.white,
          foregroundColor: Glovar.blackvar,
          actions: [
            IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  // Button linking to settings page
                }),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.only(top: 25.0),
                  decoration: BoxDecoration(
                    //shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          bild),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Glovar.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Container(
                  width: 120,
                  height: 35,
                  margin: EdgeInsets.only(top: 10, bottom: 30),
                  child: TextButton(
                    child: Text('Avatar ändern'),
                    onPressed: () {
                      // Button to change the profile picture
                    },
                    style: TextButton.styleFrom(
                      primary: Glovar.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Glovar.grey,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Name',
                        style: TextStyle(color: Glovar.blackvar),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      child: TextFormField(
                          controller: NameController,
                          onChanged: (text) {
                            nameCheck = true;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: name,
                          )
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'E-Mail',
                        style: TextStyle(color: Glovar.blackvar),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      child: TextFormField(
                          controller: EmailController,
                          onChanged: (text) {
                            emailCheck = true;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: email,
                          )
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Telefon',
                        style: TextStyle(color: Glovar.blackvar),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: tel,
                          )
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Adresse',
                        style: TextStyle(color: Glovar.blackvar),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: adresse,
                          )
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Stadt',
                        style: TextStyle(color: Glovar.blackvar),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: stadt,
                          )
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Stärken',
                        style: TextStyle(color: Glovar.blackvar),
                      ),
                    ),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Container(
                              child: InputChip(
                                  label: const Text('Belastbarkeit'),
                                  labelStyle: TextStyle(color: Glovar.white),
                                  backgroundColor: Glovar.red,
                                  onPressed: () {
                                    print('I am the one thing in life.');
                                  })),
                          Container(
                              margin: EdgeInsets.only(left: 5),
                              child: InputChip(
                                  label: const Text('Teamfähigkeit'),
                                  labelStyle: TextStyle(color: Glovar.white),
                                  backgroundColor: Glovar.blue,
                                  onPressed: () {
                                    print('I am the one thing in life.');
                                  })),
                          Container(
                              margin: EdgeInsets.only(left: 5),
                              child: InputChip(
                                  label: const Text('Offenheit'),
                                  labelStyle: TextStyle(color: Glovar.white),
                                  backgroundColor: Glovar.green,
                                  onPressed: () {
                                    print('I am the one thing in life.');
                                  })),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Container(
                              child: InputChip(
                                  label: const Text('Engagement'),
                                  labelStyle: TextStyle(color: Glovar.white),
                                  backgroundColor: Glovar.purple,
                                  onPressed: () {
                                    print('I am the one thing in life.');
                                  })),
                          Container(
                              margin: EdgeInsets.only(left: 5),
                              child: InputChip(
                                  label: const Text('Geduld'),
                                  labelStyle: TextStyle(color: Glovar.white),
                                  backgroundColor: Glovar.orange,
                                  onPressed: () {
                                    print('I am the one thing in life.');
                                  })),
                          Container(
                              margin: EdgeInsets.only(left: 5),
                              child: IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: () {
                                    // Button linking to settings page
                                  })
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Center(
                child: Container(
                  width: 140,
                  height: 35,
                  margin: EdgeInsets.only(top: 35, bottom: 50),
                  child: TextButton(
                    child: Text('Speichern'),
                    onPressed: () async {

                      if (emailCheck) {
                       await UserSimplePreferences.setEmail(EmailController.text);
                      }

                      if (nameCheck) {
                        await UserSimplePreferences.setName(NameController.text);
                      }

                    },
                    style: TextButton.styleFrom(
                      primary: Glovar.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Glovar.grey,

                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Glovar.black,
        child: Icon(Icons.home),
        onPressed: () {
        },
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



