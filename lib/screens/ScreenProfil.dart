import 'package:flutter/material.dart';
import '../model/profil.dart';

class ScreenProfil extends StatelessWidget {
  const ScreenProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
      ),
      body: Center(
        child:
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20.0),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F736x%2F25%2F49%2F82%2F25498264b4b0e7bd98587789c0e4ffaa.jpg&f=1&nofb=1'),
                            fit: BoxFit.fill
                        ),
                        border: Border.all(color: Color(0xFFFFFF), width: 10.0, style: BorderStyle.solid),
                    ),
                  ),
                  Container(
                    child: Text("Hello"),
                  )
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
