import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:trying/controllers/storage_controller.dart';
import 'package:trying/screens/home_screen.dart';

void main() async {
  await GetStorage.init(); // ضروري قبل استخدام GetStorage
  Get.put(StorageController()); // تسجيل دائم
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'وردِي',
      theme: ThemeData(
        fontFamily: 'myfont',
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),

      // ✅ تحديد اللغة العربية كلغة افتراضية
      locale: const Locale('ar'),

      // ✅ دعم اللغات (يمكنك إضافة لغات أخرى إذا أردت)
      supportedLocales: const [
        Locale('ar'),
      ],

      // ✅ إضافة المندوبين لدعم الترجمة
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      // ✅ التأكد من أن الاتجاه RTL في كل التطبيق
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },

      home: const HomeScreen(),
    );
  }
}
