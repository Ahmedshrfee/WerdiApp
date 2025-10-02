import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trying/controllers/connect_azkar_api.dart';

class AzkarViewScreen extends StatelessWidget {
  const AzkarViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GetBuilder<ConnectAzkarApi>(builder: (controller) {
          return Text(
            "${controller.pageName}",
            style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w700),
          );
        }),
        backgroundColor: (Colors.white),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GetBuilder<ConnectAzkarApi>(
                init: ConnectAzkarApi(),
                builder: (controller) {
                  return FutureBuilder(
                      future: controller.gettingAzkarBody(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width * 0.92,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.brown,
                              ),
                              child: Center(
                                  child: Container(
                                height: 30,
                                width: 30,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 2,
                                ),
                              )),
                            ),
                          );
                        } else if (snapshot.connectionState ==
                            ConnectionState.done) {
                          if (snapshot.hasData) {
                            return ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: controller.totalOfAzkar,
                                itemBuilder: (context, i) {
                                  return Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.92,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.brown,
                                        ),
                                        child: Center(
                                            child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "${snapshot.data![i]}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        )),
                                      ),
                                    ),
                                  );
                                });
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

                        return Center(
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )),
                          ),
                        );
                      });
                }),
          ],
        ),
      ),
    );
  }
}
