import 'package:get/get.dart';
import 'package:profile_try_1/model/profil_model.dart';
import 'package:profile_try_1/services/remote_services.dart';

class ProfilController extends GetxController {

  var profil;

  @override
  void onInit() {
    fetchProfile();
    super.onInit();
  }

  void fetchProfile() async {
    var profil = RemoteServices.fetchProfileFromAssets();
  }
}