import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';

class ConnectAzkarApi extends GetxController {
  var theAzkarLink = Uri.parse("https://alquran.vip/APIs/azkar");
  late int choosenType;
  var azkarType;
  late String pageName;
  late int totalOfAzkar;
  List<String> theAzkar = [];

  setTheArgument() {
    if (choosenType == 1) {
      azkarType = "morning_azkar";
      totalOfAzkar = 31;
      pageName = "أذكار الصباح";
    } else if (choosenType == 2) {
      azkarType = "evening_azkar";
      totalOfAzkar = 30;
      pageName = "أذكار المساء";
    } else if (choosenType == 3) {
      azkarType = "prayer_azkar";
      totalOfAzkar = 11;
      pageName = "أذكار الصلاة";
    } else if (choosenType == 4) {
      azkarType = "prayer_later_azkar";
      totalOfAzkar = 11;
      pageName = "اذكار بعد الصلاة";
    } else if (choosenType == 5) {
      azkarType = "sleep_azkar";
      totalOfAzkar = 13;
      pageName = "أذكار النوم";
    } else if (choosenType == 6) {
      azkarType = "wake_up_azkar";
      totalOfAzkar = 3;
      pageName = "أذكار الإستيقاظ";
    } else if (choosenType == 7) {
      azkarType = "mosque_azkar";
      totalOfAzkar = 3;
      pageName = "أذكار المسجد";
    }
  }

  Future<List> gettingAzkarBody() async {
    theAzkar = [];

    var theAzkarCodedBody = await get(theAzkarLink);
    var theAzkarJsonBody = jsonDecode(theAzkarCodedBody.body);
    var theZikrType = theAzkarJsonBody[azkarType];

    for (var i = 0; i < totalOfAzkar; i++) {
      var theZikr = theZikrType[i]["text"];
      theAzkar.add(theZikr);
    }
    return theAzkar;
  }
}
