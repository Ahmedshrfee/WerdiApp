import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:trying/models/reader_model.dart';

class QuranAudioController extends GetxController {
  List<ReaderModel> readers = [];

  var chossenRName;
  var chossenRID;

  Future<List> getReaders() async {
    var theLink = await get(Uri.parse("https://alquran.vip/APIs/reciters"));
    var theLinkBody = jsonDecode(theLink.body);
    var finalLink = theLinkBody["reciters"];
    for (var i = 0; i < finalLink.length; i++) {
      readers.add(ReaderModel(
          readerName: finalLink[i]["reciter_name"],
          readerID: finalLink[i]["reciter_id"]));
    }

    return readers;
  }

  // readers.where((item) => item.readerName.contains(query)).toList();
}
