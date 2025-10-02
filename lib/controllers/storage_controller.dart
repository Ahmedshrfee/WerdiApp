import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageController extends GetxController {
  void onInit() {
    gettingTheWerd();
    super.onInit();
  }

  final myStorage = GetStorage();

  var theSurahName;
  var theAyahNumber;

  var mysurah;
  var myayah;


  settingTheWerd() {
    myStorage.write("surah", "$theSurahName");
    myStorage.write("ayah", "$theAyahNumber");
    update();
  }

  gettingTheWerd() {
    mysurah = myStorage.read("surah");
    myayah = myStorage.read("ayah");
    update();
  }
}
