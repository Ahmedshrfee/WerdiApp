import 'dart:convert';
import 'dart:math';

import 'package:get/get.dart';
import 'package:http/http.dart';

class ConnectDuaaApi extends GetxController {
  var propheticDuaaBody;
  var prophetic_duas;

  var quranDuaaBody;
  var quran_duas;

  var prophetsDuasBody;
  var prophetsDuas;
  Future<String> geetingDuaa() async {
    if (propheticDuaaBody != null) {
      return propheticDuaaBody;
    }
    var myDuaa = await get(Uri.parse("https://alquran.vip/APIs/duas"));
    var myDuaaBody = jsonDecode(myDuaa.body);
    prophetic_duas = myDuaaBody["prophetic_duas"];
    propheticDuaaBody = prophetic_duas[Random().nextInt(29)]["text"];
    return propheticDuaaBody;
  }

  Future<String> geetingQuranDuaa() async {
    if (quranDuaaBody != null) {
      return quranDuaaBody;
    }
    var myDuaa = await get(Uri.parse("https://alquran.vip/APIs/duas"));
    var myDuaaBody = jsonDecode(myDuaa.body);
    quran_duas = myDuaaBody["quran_duas"];
    quranDuaaBody = quran_duas[Random().nextInt(26)]["text"];
    return quranDuaaBody;
  }

  Future<String> gettingProphetsDuas() async {
    if (prophetsDuasBody != null) {
      return prophetsDuasBody;
    }
    var myDuaa = await get(Uri.parse("https://alquran.vip/APIs/duas"));
    var myDuaaBody = jsonDecode(myDuaa.body);
    prophetsDuas = myDuaaBody["prophets_duas"];
    prophetsDuasBody = prophetsDuas[Random().nextInt(13)]["text"];
    return prophetsDuasBody;
  }

  propheticBtn() {
    propheticDuaaBody = null;
    update(['prophetic']);
  }

  quranBtn() {
    quranDuaaBody = null;
    update(['quran']);
  }

  proBtn() {
    prophetsDuasBody = null;
    update(['prophets']);
  }
}


// class ConnectDuaaApi extends GetxController {
//   var propheticDuaaBody;
//   var prophetic_duas;
//   geetingDuaa() async {
//     propheticDuaaBody = "empty";
//     update();
//     var myDuaa = await get(Uri.parse("https://alquran.vip/APIs/duas"));
//     var myDuaaBody = jsonDecode(myDuaa.body);
//     prophetic_duas = myDuaaBody["prophetic_duas"];
//     propheticDuaaBody = prophetic_duas[Random().nextInt(29)]["text"];
//     print("reaching");
//     update();
//     return propheticDuaaBody;
//   }
// }