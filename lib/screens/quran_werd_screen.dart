import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trying/controllers/storage_controller.dart';

class QuranWerdScreen extends StatelessWidget {
  const QuranWerdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController surahController = TextEditingController();
    TextEditingController ayahController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "وِرد القرآن",
          style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w700),
        ),
        backgroundColor: (Colors.white),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 20, top: 12, left: 12, bottom: 12),
              child: Text(
                "السورة",
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.w600,
                    fontSize: 25),
              ),
            ),
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.90,
                child: TextField(
                  style: TextStyle(
                      color: Colors.white, decoration: TextDecoration.none),
                  controller: surahController,
                  decoration: InputDecoration(
                    hintText: "سجل اسم السورة هنا ",
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(127, 255, 255, 255)),
                    filled: true,
                    fillColor: Colors.brown[600],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 20, top: 12, left: 12, bottom: 12),
              child: Text(
                "الآية",
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.w600,
                    fontSize: 25),
              ),
            ),
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.90,
                child: TextField(
                  style: TextStyle(
                      color: Colors.white, decoration: TextDecoration.none),
                  controller: ayahController,
                  decoration: InputDecoration(
                    hintText: "سجل رقم الآية هنا  ",
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(127, 255, 255, 255)),
                    filled: true,
                    fillColor: Colors.brown[600],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            GetBuilder<StorageController>(builder: (controller) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      if (surahController.text == null ||
                          surahController.text == "" ||
                          ayahController.text == null ||
                          ayahController.text == "") {
                        Get.snackbar("لم تكمل البيانات",
                            "لقد نسيت وضع اسم السورة او رقم الآية",
                            backgroundColor: Colors.red,
                            snackPosition: SnackPosition.BOTTOM,
                            isDismissible: true);
                      } else {
                        controller.theSurahName = surahController.text;
                        controller.theAyahNumber = ayahController.text;

                        controller.settingTheWerd();
                        controller.gettingTheWerd();

                        Get.snackbar("تمت العملية", "تم إضافة وِردك بنجاح",
                            backgroundColor: Colors.green,
                            snackPosition: SnackPosition.BOTTOM,
                            isDismissible: true);
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 225, 224, 224),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5),
                              ]),
                          height: 35,
                          width: 140,
                          child: Center(
                              child: Text(
                            "إحفظ وِردك ",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.brown,
                                fontWeight: FontWeight.w700),
                          )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                              child: Text(
                            "وِردٌكَ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 34,
                                fontWeight: FontWeight.w500),
                          )),
                          Text(
                            "السورة :",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            "${controller.mysurah ?? "لايوجد سورة بعد"}",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 23,
                                color: Colors.white),
                          ),
                          Text(
                            " الآية :",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            "${controller.myayah ?? "لايوجد آية بعد"}",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 23,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
