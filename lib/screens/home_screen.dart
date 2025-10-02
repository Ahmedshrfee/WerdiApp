import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trying/controllers/connect_azan_api.dart';
import 'package:trying/controllers/quran_audio_controller.dart';
import 'package:trying/screens/azan_times_screen.dart';
import 'package:trying/screens/azkar_screen.dart';
import 'package:trying/screens/duaa_screen.dart';
import 'package:trying/screens/quran_werd_screen.dart';
import 'package:trying/screens/search_audio_quran_screen.dart';
import 'package:trying/screens/view_readers_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
            child: Text(
          "وِردي",
          style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w700),
        )),
        backgroundColor: (Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: EdgeInsetsDirectional.only(top: 30),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: 200,
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 35,
                                fontFamily: 'myfont',
                                fontWeight: FontWeight.w400),
                            children: <TextSpan>[
                          TextSpan(
                              text: "وِردي ",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                              )),
                          TextSpan(text: "مساعدك الأفضل للاهتمام بالأدعية و "),
                          TextSpan(
                            text: "الوِرد",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          TextSpan(text: " اليومي")
                        ]))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.brown,
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(128, 158, 158, 158),
                          blurRadius: 5,
                          offset: Offset(0, 0),
                          spreadRadius: 1)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        "اذكار الصباح والمساء",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            shadows: [Shadow()]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Get.to(AzkarScreen());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: const Color.fromARGB(
                                        128, 158, 158, 158),
                                    blurRadius: 5,
                                    offset: Offset(0, 0),
                                    spreadRadius: 1)
                              ],
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(1000)),
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.chevron_right,
                            size: 30,
                            color: Colors.brown,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.brown,
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(128, 158, 158, 158),
                          blurRadius: 5,
                          offset: Offset(0, 0),
                          spreadRadius: 1)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        "وِرد القران",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            shadows: [Shadow()]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Get.to(QuranWerdScreen());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: const Color.fromARGB(
                                        128, 158, 158, 158),
                                    blurRadius: 5,
                                    offset: Offset(0, 0),
                                    spreadRadius: 1)
                              ],
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(1000)),
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.chevron_right,
                            size: 30,
                            color: Colors.brown,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.brown,
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(128, 158, 158, 158),
                          blurRadius: 5,
                          offset: Offset(0, 0),
                          spreadRadius: 1)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        "الأدعية",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            shadows: [Shadow()]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Get.to(DuaaScreen());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: const Color.fromARGB(
                                        128, 158, 158, 158),
                                    blurRadius: 5,
                                    offset: Offset(0, 0),
                                    spreadRadius: 1)
                              ],
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(1000)),
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.chevron_right,
                            size: 30,
                            color: Colors.brown,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.brown,
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(128, 158, 158, 158),
                          blurRadius: 5,
                          offset: Offset(0, 0),
                          spreadRadius: 1)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        "أوقات الصلاة",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            shadows: [Shadow()]),
                      ),
                    ),
                    GetBuilder<ConnectAzanApi>(
                        init: ConnectAzanApi(),
                        builder: (controller) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                controller.gettingAzanTimes();
                                Get.to(AzanTimesScreen());
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: const Color.fromARGB(
                                              128, 158, 158, 158),
                                          blurRadius: 5,
                                          offset: Offset(0, 0),
                                          spreadRadius: 1)
                                    ],
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(1000)),
                                height: 50,
                                width: 50,
                                child: Icon(
                                  Icons.chevron_right,
                                  size: 30,
                                  color: Colors.brown,
                                ),
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.brown,
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(128, 158, 158, 158),
                          blurRadius: 5,
                          offset: Offset(0, 0),
                          spreadRadius: 1)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        "سماع القرآن",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            shadows: [Shadow()]),
                      ),
                    ),
                    GetBuilder<ConnectAzanApi>(
                        init: ConnectAzanApi(),
                        builder: (controller) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Get.to(ViewReadersScreen());
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: const Color.fromARGB(
                                              128, 158, 158, 158),
                                          blurRadius: 5,
                                          offset: Offset(0, 0),
                                          spreadRadius: 1)
                                    ],
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(1000)),
                                height: 50,
                                width: 50,
                                child: Icon(
                                  Icons.chevron_right,
                                  size: 30,
                                  color: Colors.brown,
                                ),
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
