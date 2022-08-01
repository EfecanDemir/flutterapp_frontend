import 'package:flutter/material.dart';
import 'package:flutterapp_frontend/constants.dart';
import 'package:slide_to_act/slide_to_act.dart';

class HeaderWithBonusBox extends StatelessWidget {
  const HeaderWithBonusBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding*2.5),
      height: size.height*0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left:kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36+ kDefaultPadding),
            height: size.height*0.2-27,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text('Hoşgeldin Efe',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
                ),
               Spacer(),
                Text('2000 puan',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
                ), 
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child:Container(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              margin: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color:kPrimaryColor.withOpacity(0.23),
                    )
                  ],
              ),
              child: const SlideAction(
                 height: 30,
                 //onSubmit: ()=>ref.read(registerRiverpod).fetch(),
                 child: Text(
                   "Günlük bonusunu buradan al",
                 ),
               ),
            ),
          ),
        ],
      ),
    );
  }
}

