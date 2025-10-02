import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';

class ConnectAzanApi extends GetxController {
  late String fajrTime;
  late String sunriseTime;
  late String duhurTime;
  late String asrTime;
  late String MaghrebTime;
  late String ishaTime;
  List times = [];

  Future<dynamic> gettingAzanTimes() async {
    String theAzanURL = 'https://alquran.vip/APIs/getPrayerTimes';
    var theURI = await get(Uri.parse(theAzanURL));
    var myAzanBody = jsonDecode(theURI.body);
    var prayerTimes = myAzanBody["prayer_times"];
    fajrTime = prayerTimes["Fajr"];

    sunriseTime = prayerTimes["Sunrise"];

    duhurTime = prayerTimes["Dhuhr"];

    asrTime = prayerTimes["Asr"];

    MaghrebTime = prayerTimes["Maghrib"];

    ishaTime = prayerTimes["Isha"];
    times.addAll(
        [fajrTime, sunriseTime, duhurTime, asrTime, MaghrebTime, ishaTime]);
    return times;
  }
}
