import 'package:profile_try_1/model/profil_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences {
  static SharedPreferences _preferences = SharedPreferences.getInstance() as SharedPreferences;

  static const _keyName = "profil";



  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();


  static Future setName(String name) async =>
    await _preferences.setString(_keyName, name);

  static String? getName() => _preferences.getString(_keyName);

  static Future setProfil(Profil profil) async {
    final json = profil.toJson();

  }

}