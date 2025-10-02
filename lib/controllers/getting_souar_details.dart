import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:trying/models/surah_model.dart';

class GettingSouarDetails extends GetxController {
  late String sourahName;
  late String sourahId;
  final String theSouarIdVar = "id";
  final String theSouarNameVar = "name_ar";

  List<SurahModel> souar = [];

  Future<List> getSouar() async {
    var theLink = await get(Uri.parse("https://alquran.vip/APIs/surahs"));
    var theLinkBody = jsonDecode(theLink.body);
    for (var i = 0; i < theLinkBody.length; i++) {
      souar.add(SurahModel(
          surahId: theLinkBody[i][theSouarIdVar],
          surahName: theLinkBody[i][theSouarNameVar]));
    }
    return souar;
  }
}
