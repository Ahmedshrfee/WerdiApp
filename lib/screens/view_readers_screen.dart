import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trying/controllers/getting_souar_details.dart';
import 'package:trying/data/readers_dat.dart';
import 'package:trying/screens/show_souar_screen.dart';

class ViewReadersScreen extends StatelessWidget {
  const ViewReadersScreen({super.key});

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
      body: ListView.builder(
          itemCount: readersData.readers.length,
          itemBuilder: (context, i) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: 60,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(129, 121, 85, 72),
                            blurRadius: 2)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          readersData.readers[i].readerName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      GetBuilder<GettingSouarDetails>(
                          init: GettingSouarDetails(),
                          builder: (controller) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: InkWell(
                                onTap: () {
                                  controller.getSouar();

                                  Get.to(ShowSouarScreen());
                                  print(controller.souar[22].surahName);
                                },
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          116, 255, 255, 255),
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.white, blurRadius: 3)
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "إختار الشيخ",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
