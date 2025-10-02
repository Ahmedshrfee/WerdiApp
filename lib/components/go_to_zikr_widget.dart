import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trying/controllers/connect_azkar_api.dart';
import 'package:trying/screens/azkar_view_screen.dart';

class GoToZikrWidget extends StatelessWidget {
  int azkarTypeNumber;
  String azkarTypeName;

  GoToZikrWidget(
      {super.key, required this.azkarTypeNumber, required this.azkarTypeName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 7)]),
              height: 70,
              width: MediaQuery.of(context).size.width * 0.92,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text(
                      azkarTypeName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  GetBuilder<ConnectAzkarApi>(
                      init: ConnectAzkarApi(),
                      builder: (controller) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: InkWell(
                            onTap: () {
                              controller.choosenType = azkarTypeNumber;
                              controller.setTheArgument();
                              Get.to(AzkarViewScreen());
                            },
                            child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 4,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  "إعرض",
                                  style: TextStyle(color: Colors.brown),
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
        )
      ],
    );
  }
}
