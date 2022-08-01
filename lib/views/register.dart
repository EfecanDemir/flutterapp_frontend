import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grock/grock.dart';
import 'package:flutterapp_frontend/riverpod/riverpod_managment.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Register extends ConsumerStatefulWidget {
  final VoidCallback showLoginPage;
  const Register({Key? key,required this.showLoginPage}):super(key:key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterState();
}

class _RegisterState extends ConsumerState<Register> {
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
            SizedBox(height: 10),

            Text('Kayıt ol',
              style:GoogleFonts.bebasNeue(
                fontSize: 36,
              ),
            ),
            const SizedBox(height: 10),
            const Text('Kullanıcı bilgilerini giriniz.',
            style: TextStyle(
              fontSize:20, ),),
            SizedBox(height: 20),

            // kullanıcı adı giriş 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color:Colors.grey[200],
                  border: Border.all(color:Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: ref.read(registerRiverpod).userName,
                   obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    border: OutlineInputBorder(
                      borderRadius: 10.allBR,
                    ),
                    ),
                ),
              ),
            ),

            SizedBox(height: 15),
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
                  controller: ref.read(registerRiverpod).email,
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
                  controller: ref.read(registerRiverpod).password,
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
                 child: SlideAction(
                     height: 30,
                     onSubmit: ()=>ref.read(registerRiverpod).fetch(),
                     child: const Text(
                       "Kayıt Ol",
                     ),
                   ),
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text('Uygulamaya üye misin ?',style: TextStyle(fontWeight: FontWeight.bold),),
                  GestureDetector(
                    onTap: widget.showLoginPage,
                    child: Text(
                      ' Hemen giriş yap',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
              ],
            ),
          ],
      ),
        )),
    );
  }
}