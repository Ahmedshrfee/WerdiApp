import 'package:flutter/material.dart';
import 'package:trying/components/go_to_zikr_widget.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "اذكار الصباح والمساء",
            style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w700),
          ),
          backgroundColor: (Colors.white),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              GoToZikrWidget(azkarTypeNumber: 1, azkarTypeName: "أذكار الصباح"),
              GoToZikrWidget(azkarTypeNumber: 2, azkarTypeName: "أذكار المساء"),
              GoToZikrWidget(azkarTypeNumber: 3, azkarTypeName: "أذكار الصلاة"),
              GoToZikrWidget(
                  azkarTypeNumber: 4, azkarTypeName: "أذكار بعد الصلاة"),
              GoToZikrWidget(azkarTypeNumber: 5, azkarTypeName: "أذكار النوم"),
              GoToZikrWidget(
                  azkarTypeNumber: 6, azkarTypeName: "أذكار الإستيقاظ"),
              GoToZikrWidget(azkarTypeNumber: 7, azkarTypeName: "أذكار المسجد"),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
