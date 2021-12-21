import 'dart:io';

import 'package:flutter/material.dart';
import 'package:profile_try_1/screens/screen_profil_loader.dart';
import 'package:profile_try_1/utils/user_simple_preferences.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilLoader(),
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = new MyHttpOverrides();
  await UserSimplePreferences.init();
  print("test");
  runApp(const MyApp());
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
