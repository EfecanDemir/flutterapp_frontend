import 'package:flutter/material.dart';
import 'package:flutterapp_frontend/auth/auth_page.dart';
import 'package:flutterapp_frontend/views/home.dart';
import 'package:flutterapp_frontend/views/login.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grock/grock.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  final box=GetStorage();

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2),(){
      if (box.read("token")!=null) {
        Grock.toRemove(Home());
      }else{
        Grock.toRemove(AuthPage());
      }
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Text("Hoşgeldiniz.. İlk gösterim",style: Theme.of(context).textTheme.headline4,),
      ),
    );
  }
}