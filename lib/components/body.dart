import 'package:flutter/material.dart';
import 'package:flutterapp_frontend/components/header_with_bonusbox.dart';
import 'package:flutterapp_frontend/constants.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithBonusBox(size: size),
        ],
      ),
    );
  }
}
