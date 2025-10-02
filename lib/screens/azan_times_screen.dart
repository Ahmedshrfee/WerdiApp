import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trying/controllers/connect_azan_api.dart';

class AzanTimesScreen extends StatelessWidget {
  const AzanTimesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "أوقات الصلاة",
            style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w700),
          ),
          backgroundColor: (Colors.white),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 12, left: 12, right: 12),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "أوقات الصلاة حسب التوقيت المحلي ",
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
            ),
            GetBuilder<ConnectAzanApi>(
                init: ConnectAzanApi(),
                builder: (controller) {
                  return FutureBuilder(
                      future: controller.gettingAzanTimes(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 100),
                              child: Container(
                                height: 30,
                                width: 30,
                                child: CircularProgressIndicator(
                                  color: Colors.brown,
                                ),
                              ),
                            ),
                          );
                        } else if (snapshot.connectionState ==
                            ConnectionState.done) {
                          if (snapshot.hasData) {
                            return Container(
                              margin: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width * 0.90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.brown,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 12,
                                              right: 12,
                                              top: 12,
                                              bottom: 15),
                                          child: Text(
                                            "صلاة الفجر",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "${controller.fajrTime}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 12,
                                              right: 12,
                                              top: 12,
                                              bottom: 15),
                                          child: Text(
                                            "شروق الشمس",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "${controller.sunriseTime}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 12,
                                              right: 12,
                                              top: 12,
                                              bottom: 15),
                                          child: Text(
                                            "صلاة الظهر",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "${controller.duhurTime}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 12,
                                              right: 12,
                                              top: 12,
                                              bottom: 15),
                                          child: Text(
                                            "صلاة العصر",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "${controller.asrTime}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 12,
                                              right: 12,
                                              top: 12,
                                              bottom: 15),
                                          child: Text(
                                            "صلاة المغرب",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "${controller.MaghrebTime}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 12,
                                              right: 12,
                                              top: 12,
                                              bottom: 15),
                                          child: Text(
                                            "صلاة العشاء",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "${controller.ishaTime}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return Column(
                              children: [
                                Center(
                                  child: Container(
                                    height: 70,
                                    width: MediaQuery.of(context).size.width *
                                        0.92,
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
                                              color: Colors.grey,
                                              blurRadius: 10)
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
                        return Text("error");
                      });
                })
          ]),
        ));
  }
}
