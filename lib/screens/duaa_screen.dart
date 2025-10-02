
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trying/controllers/connect_duaa_api.dart';


class DuaaScreen extends StatefulWidget {
  DuaaScreen({super.key});

  @override
  State<DuaaScreen> createState() => _DuaaScreenState();
}

class _DuaaScreenState extends State<DuaaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "الأدعية",
            style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w700),
          ),
          backgroundColor: (Colors.white),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            GetBuilder<ConnectDuaaApi>(
                init: ConnectDuaaApi(),
                id: 'prophetic',
                builder: (controller) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "الأدعية النبوية", // هنا اسم القسم
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 26,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Column(
                        children: [
                          FutureBuilder(
                              future: controller.geetingDuaa(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.brown,
                                          ),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.95,
                                          height: 100,
                                          child: Center(
                                            child: Container(
                                              height: 30,
                                              width: 30,
                                              child: CircularProgressIndicator(
                                                color: Colors.white,
                                                strokeWidth: 2,
                                              ),
                                            ),
                                          )),
                                    ),
                                  );
                                } else if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  if (snapshot.hasData) {
                                    return Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.brown,
                                            ),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.95,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "${snapshot.data}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16),
                                              ),
                                            )),
                                      ),
                                    );
                                  } else if (snapshot.hasError) {
                                    return Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.brown,
                                            ),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.95,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "حدث خطأ ما ... تأكد من اتصال الانترنت الخاص بك",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16),
                                              ),
                                            )),
                                      ),
                                    );
                                  }
                                }
                                return Text("");
                              }),
                          InkWell(
                            onTap: () {
                              controller.propheticBtn();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 225, 224, 224),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey, blurRadius: 3),
                                      ]),
                                  height: 30,
                                  width: 110,
                                  child: Center(child: Text("جدد الدعاء")),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  );
                }),
            GetBuilder<ConnectDuaaApi>(
                id: 'quran',
                builder: (controller) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "الأدعية القرآنية", // هنا اسم القسم
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 26,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Column(
                        children: [
                          FutureBuilder(
                              future: controller.geetingQuranDuaa(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.brown,
                                          ),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.95,
                                          height: 100,
                                          child: Center(
                                            child: Container(
                                              height: 30,
                                              width: 30,
                                              child: CircularProgressIndicator(
                                                color: Colors.white,
                                                strokeWidth: 2,
                                              ),
                                            ),
                                          )),
                                    ),
                                  );
                                } else if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  if (snapshot.hasData) {
                                    return Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.brown,
                                            ),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.95,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "${snapshot.data}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16),
                                              ),
                                            )),
                                      ),
                                    );
                                  } else if (snapshot.hasError) {
                                    return Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.brown,
                                            ),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.95,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "حدث خطأ ما ... تأكد من اتصال الانترنت الخاص بك",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16),
                                              ),
                                            )),
                                      ),
                                    );
                                  }
                                }
                                return Text("");
                              }),
                          InkWell(
                            onTap: () {
                              controller.quranBtn();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 225, 224, 224),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey, blurRadius: 3),
                                      ]),
                                  height: 30,
                                  width: 110,
                                  child: Center(child: Text("جدد الدعاء")),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  );
                }),
            GetBuilder<ConnectDuaaApi>(
                id: 'prophets',
                builder: (controller) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          " أدعية الأنبياء من القرآن", // هنا اسم القسم
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 26,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Column(
                        children: [
                          FutureBuilder(
                              future: controller.gettingProphetsDuas(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.brown,
                                          ),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.95,
                                          height: 100,
                                          child: Center(
                                            child: Container(
                                              height: 30,
                                              width: 30,
                                              child: CircularProgressIndicator(
                                                color: Colors.white,
                                                strokeWidth: 2,
                                              ),
                                            ),
                                          )),
                                    ),
                                  );
                                } else if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  if (snapshot.hasData) {
                                    return Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.brown,
                                            ),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.95,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "${snapshot.data}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16),
                                              ),
                                            )),
                                      ),
                                    );
                                  } else if (snapshot.hasError) {
                                    return Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.brown,
                                            ),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.95,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "حدث خطأ ما ... تأكد من اتصال الانترنت الخاص بك",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16),
                                              ),
                                            )),
                                      ),
                                    );
                                  }
                                }
                                return Text("");
                              }),
                          InkWell(
                            onTap: () {
                              controller.proBtn();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 30, left: 8, right: 8),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 225, 224, 224),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey, blurRadius: 3),
                                      ]),
                                  height: 30,
                                  width: 110,
                                  child: Center(child: Text("جدد الدعاء")),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  );
                })
          ]),
        ));
  }
}


// FutureBuilder(
//                   future: controller.geetingDuaa(),
//                   builder: (context, snapshot) {
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(15),
//                                 color: Colors.brown,
//                               ),
//                               width: MediaQuery.of(context).size.width * 0.95,
//                               height: 100,
//                               child: Center(
//                                 child: Container(
//                                   height: 30,
//                                   width: 30,
//                                   child: CircularProgressIndicator(
//                                     color: Colors.white,
//                                     strokeWidth: 2,
//                                   ),
//                                 ),
//                               )),
//                         ),
//                       );
//                     }
//                     if (snapshot.connectionState == ConnectionState.done) {
//                       return Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(15),
//                                 color: Colors.brown,
//                               ),
//                               width: MediaQuery.of(context).size.width * 0.95,
//                               child: Text(
//                                 "${snapshot.data}",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 22),
//                               )),
//                         ),
//                       );
//                     }
//                     return Text("");
//                   })






// Center(
              //     child: Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(15),
              //         color: Colors.brown,
              //       ),
              //       width: MediaQuery.of(context).size.width * 0.95,
              //       height: 100,
              //       child: Center(
              //           child: Text(controller.propheticDuaaBody ?? ""))),
              // ))







      //         body: GetBuilder<ConnectDuaaApi>(
      //   init: ConnectDuaaApi(),
      //   builder: (controller) {
      //     if (controller.propheticDuaaBody == "empty") {
      //       return Column(
      //         children: [
      //           Center(
      //               child: Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Container(
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(15),
      //                   color: Colors.brown,
      //                 ),
      //                 width: MediaQuery.of(context).size.width * 0.95,
      //                 height: 100,
      //                 child: Center(
      //                     child: Container(
      //                   height: 20,
      //                   width: 20,
      //                   child: CircularProgressIndicator(
      //                     color: Colors.white,
      //                     strokeWidth: 2,
      //                   ),
      //                 ))),
      //           )),
      //           InkWell(
      //             onTap: () {
      //               controller.geetingDuaa();
      //             },
      //             child: Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Container(
      //                 decoration: BoxDecoration(
      //                     color: const Color.fromARGB(255, 225, 224, 224),
      //                     boxShadow: [
      //                       BoxShadow(color: Colors.grey, blurRadius: 3),
      //                     ]),
      //                 height: 30,
      //                 width: 110,
      //                 child: Center(child: Text("جدد الدعاء")),
      //               ),
      //             ),
      //           )
      //         ],
      //       );
      //     } else if (controller.propheticDuaaBody != "empty") {
      //       return Column(
      //         children: [
      //           Center(
      //               child: Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Container(
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(15),
      //                   color: Colors.brown,
      //                 ),
      //                 width: MediaQuery.of(context).size.width * 0.95,
      //                 child: Center(
      //                     child: Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Text(
      //                       controller.propheticDuaaBody ??
      //                           "اضغط للبحث عن دعاء",
      //                       style: TextStyle(color: Colors.white)),
      //                 ))),
      //           )),
      //           InkWell(
      //             onTap: () {
      //               controller.geetingDuaa();
      //             },
      //             child: Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Container(
      //                 decoration: BoxDecoration(
      //                     color: const Color.fromARGB(255, 225, 224, 224),
      //                     boxShadow: [
      //                       BoxShadow(color: Colors.grey, blurRadius: 3),
      //                     ]),
      //                 height: 30,
      //                 width: 110,
      //                 child: Center(child: Text("جدد الدعاء")),
      //               ),
      //             ),
      //           )
      //         ],
      //       );
      //     }
      //     return Text("");
      //   },
      // ),