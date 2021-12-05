import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenProfil extends StatelessWidget {
  const ScreenProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
          title: Text("Profil"), centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_sharp),
            onPressed: () {
              // Button linking to last visited page
            },
          ),
          backgroundColor: Colors.black87,
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
                      image: NetworkImage('https://static.wikia.nocookie.net/nickelodeon/images/f/f7/Jimmy_Neutron_-_Carl.png/revision/latest?cb=20160605152619&path-prefix=de'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.grey,
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
                  width: 110,
                  height: 35,
                  margin: EdgeInsets.only(top: 10, bottom: 30),
                  color: Colors.grey,
                  child: TextButton(
                    child: Text('Avatar ändern'),
                    onPressed: () {
                      // Button to change the profile picture
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white,
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
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Name',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                  Container(
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Carl Keucher',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'E-Mail',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                  Container(
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'carl.keucher@gmail.com',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Telefon',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                  Container(
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '+49 170 7462302',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Adresse',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                  Container(
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Leipziger Straße 123',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Stadt',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                  Container(
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '36037 Fulda',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Stärken',
                        style: TextStyle(color: Colors.black54),
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
                                  labelStyle: TextStyle(color: Colors.white),
                                  backgroundColor: Colors.red,
                                  onPressed: () {
                                    print('I am the one thing in life.');
                                  }
                              )
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 5),
                              child: InputChip(
                                  label: const Text('Teamfähigkeit'),
                                  labelStyle: TextStyle(color: Colors.white),
                                  backgroundColor: Colors.blue,
                                  onPressed: () {
                                    print('I am the one thing in life.');
                                  }
                              )
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 5),
                              child: InputChip(
                                  label: const Text('Offenheit'),
                                  labelStyle: TextStyle(color: Colors.white),
                                  backgroundColor: Colors.green,
                                  onPressed: () {
                                    print('I am the one thing in life.');
                                  }
                              )
                          ),
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
                                  labelStyle: TextStyle(color: Colors.white),
                                  backgroundColor: Colors.deepPurple,
                                  onPressed: () {
                                    print('I am the one thing in life.');
                                  }
                              )
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 5),
                              child: InputChip(
                                  label: const Text('Geduld'),
                                  labelStyle: TextStyle(color: Colors.white),
                                  backgroundColor: Colors.orange,
                                  onPressed: () {
                                    print('I am the one thing in life.');
                                  }
                              )
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
                  width: 130,
                  height: 35,
                  margin: EdgeInsets.only(top: 30, bottom: 50),
                  color: Colors.grey,
                  child: TextButton(
                    child: Text('Profil bearbeiten'),
                    onPressed: () {
                      // Button to change the profile picture
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Center(
                child: Container(
                  child: TextButton(
                    child: Text('Impressum'),
                    onPressed: () {
                      // Button linking to the impress page
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
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
          ]
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
    );
  }
}