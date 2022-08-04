import 'package:flutter/material.dart';
import 'package:flutterapp_frontend/constants.dart';
import 'package:flutterapp_frontend/views/details/components/button_select.dart';
import 'package:flutterapp_frontend/views/details/components/image_and_backarrow.dart';
import 'package:flutterapp_frontend/views/details/components/title_and_description.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageandBackArrow(size: size),
          TitleandDescription(title:"Cem Yılmaz Kararkomik 9 un vizyon tarihini açıklar ? " ,description: " 2 gün 10 saat 8 dakika kaldı."),
          SizedBox(height: kDefaultPadding),
          ButtonSelect(size: size),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
