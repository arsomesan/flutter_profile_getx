import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profile_try_1/model/profil_model.dart';

class RemoteServices {

  // Loading from Assets

  static Future<List<Profil>> fetchProfileFromAssets() async {
    String jsonString = await rootBundle.loadString("assets/profil.json");

    var result = profilFromJson(jsonString);
    return result;
  }
}
