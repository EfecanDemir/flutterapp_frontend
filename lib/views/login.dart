import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterapp_frontend/riverpod/riverpod_managment.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grock/grock.dart';

class Login extends ConsumerStatefulWidget {

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[300] ,
      body: Center(
        child:Padding(
          padding: 20.allP,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Icon(
              Icons.android,
              size: 100,
            ),
            SizedBox(height: 40),

            Text('FlutterAppFrontend',
              style:GoogleFonts.bebasNeue(
                fontSize: 36,
              ),
            ),
            const SizedBox(height: 10),
            const Text('Uygulama giriş kısmına hoşgeldin.',
            style: TextStyle(
              fontSize:20, ),),
            SizedBox(height: 50),
            // email giriş 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color:Colors.grey[200],
                  border: Border.all(color:Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: ref.read(loginRiverpod).email,
                   obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: 10.allBR,
                    ),
                    ),
                ),
              ),
            ),
            SizedBox(height: 15),
            // şifre giriş
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color:Colors.grey[200],
                  border: Border.all(color:Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: ref.read(loginRiverpod).password,
                   obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Şifre",
                    border: OutlineInputBorder(
                      borderRadius: 10.allBR,
                    ),
                    ),
                ),
              ),
            ),
            SizedBox(height: 15),
            //giriş yap buton
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: SizedBox(
                width: Grock.width,
                child: ElevatedButton(
                  onPressed: ()=>ref.read(loginRiverpod).fetch(),
                  child: const Text(
                    "Giriş Yap",
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hala üye olmadın mı ?',style: TextStyle(fontWeight: FontWeight.bold),),
                Text(' Hemen üye ol',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
              ],
            ),
          ],
      ),
        )),
    );
  }
}