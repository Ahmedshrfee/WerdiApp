import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trying/controllers/quran_audio_controller.dart';

class SearchAudioQuranScreen extends StatelessWidget {
  TextEditingController? searchCon = TextEditingController();

  SearchAudioQuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "اختيار شيخ",
          style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w700),
        ),
        backgroundColor: (Colors.white),
        centerTitle: true,
      ),
      body: GetBuilder<QuranAudioController>(
        init: QuranAudioController(),
        builder: (controller) {
          controller.getReaders;
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    color: Colors.amber,
                    child: TextField(
                      
                      controller: searchCon,
                    )),
                FutureBuilder(
                    future: controller.getReaders(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width * 0.92,
                                decoration: BoxDecoration(
                                  boxShadow: [],
                                  color: Colors.brown,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 3,
                                      )),
                                )),
                          ),
                        );
                      } else if (snapshot.connectionState ==
                          ConnectionState.done) {
                        if (snapshot.hasData) {
                          return Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 20,
                                  itemBuilder: (context, i) {
                                    return Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: InkWell(
                                          onTap: () {
                                            controller.chossenRID =
                                                controller.readers[i].readerID;
                                            controller.chossenRName = controller
                                                .readers[i].readerName;
                                            print(controller.chossenRID);
                                            print(controller.chossenRName);
                                          },
                                          child: Container(
                                            height: 55,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.92,
                                            decoration: BoxDecoration(
                                              boxShadow: [],
                                              color: Colors.brown,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 20),
                                                  child: Text(
                                                    "${controller.readers[i].readerName}",
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          );
                        } else if (snapshot.hasError) {
                          return Column(
                            children: [
                              Center(
                                child: Container(
                                  height: 70,
                                  width:
                                      MediaQuery.of(context).size.width * 0.92,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.brown,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "حدث خطأ يرجى إعادة المحاولة",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: InkWell(
                                  onTap: () {
                                    controller.update();
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey, blurRadius: 10)
                                      ],
                                      color: Colors.grey[400],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "إعادة المحاولة",
                                        style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                      }

                      return Column(
                        children: [
                          Center(
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width * 0.92,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.brown,
                              ),
                              child: Center(
                                  child: Text(
                                "حدث خطأ يرجى إعادة المحاولة",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: InkWell(
                              onTap: () {
                                controller.update();
                              },
                              child: Container(
                                height: 50,
                                width: 130,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey, blurRadius: 10)
                                  ],
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "إعادة المحاولة",
                                    style: TextStyle(
                                        color: Colors.brown,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    }),
              ],
            ),
          );
        },
      ),
    );
  }
}
