import 'package:flutter/material.dart';
import 'package:flutterapp_frontend/constants.dart';


class ImageandBackArrow extends StatelessWidget {
  const ImageandBackArrow({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      //padding: const EdgeInsets.only(bottom:kDefaultPadding*3),
      //child: SizedBox(
     //   height: size.height*0.8,
       // child: Row(
          children: <Widget>[
            Row(//child: Padding(
              //padding: const EdgeInsets.symmetric(vertical: kDefaultPadding*3),
              //child: Column(
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.symmetric(vertical: kDefaultPadding*3),
                    icon:Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
            Container(
              height: size.height*0.3,
              width: size.width*0.8,
              margin: const EdgeInsets.only(left:  kDefaultPadding*2,bottom: kDefaultPadding*2,right: kDefaultPadding*1.9,top: kDefaultPadding/99),
              decoration: BoxDecoration(
                borderRadius:const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                  topRight: Radius.circular(63),
                  bottomRight: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.80),
                  ),
                ],
                image: const DecorationImage(fit:BoxFit.cover, image: AssetImage("assets/images/karakomik.png"),
                ),
              ),
            ),
          ],
    );
  }
}

