import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterapp_frontend/constants.dart';
import 'package:flutterapp_frontend/views/login.dart';
import 'package:flutterapp_frontend/views/splash.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grock/grock.dart';

Future<void> main() async {
  HttpOverrides.global=new MyHttpOverrides();
  await GetStorage.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      navigatorKey: Grock.navigationKey,
      scaffoldMessengerKey: Grock.scaffoldMessengerKey, //kontrol edilecek snackbarMessengerKey olmalı
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
      ),
      home: Splash(),
    );
  }
}
// 10.0.2.2 bağlantısı için kullanıldı.
 class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
