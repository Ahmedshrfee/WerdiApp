import 'package:flutter/material.dart';
import 'package:trying/controllers/getting_souar_details.dart';

class ShowSouarScreen extends StatelessWidget {
  const ShowSouarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          " إختر سورة",
          style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w700),
        ),
        backgroundColor: (Colors.white),
        centerTitle: true,
      ),
      body: Container(
        height: 500,
        child: ListView.builder(
            itemCount: GettingSouarDetails().souar.length,
            itemBuilder: (context, i) {
              return Text(GettingSouarDetails().souar[i].surahName);
            }),
      ),
    );
  }
}
