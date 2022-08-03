import 'package:flutter/material.dart';
import 'package:flutterapp_frontend/constants.dart';
class RecommendsCards extends StatelessWidget {
  const RecommendsCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendCard(image:"assets/images/karakomik.png",title: "Karakomik",time:"2 gün kaldı",positive: 1.25,negative: 3.75,press: (){},),
           RecommendCard(image:"assets/images/karakomik.png",title: "Karakomik",time:"2 gün kaldı",positive: 1.25,negative: 3.75,press: (){},),
            RecommendCard(image:"assets/images/karakomik.png",title: "Karakomik",time:"2 gün kaldı",positive: 1.25,negative: 3.75,press: (){},),
             RecommendCard(image:"assets/images/karakomik.png",title: "Karakomik",time:"2 gün kaldı",positive: 1.25,negative: 3.75,press: (){},),
              RecommendCard(image:"assets/images/karakomik.png",title: "Karakomik",time:"2 gün kaldı",positive: 1.25,negative: 3.75,press: (){},),
               RecommendCard(image:"assets/images/karakomik.png",title: "Karakomik",time:"2 gün kaldı",positive: 1.25,negative: 3.75,press: (){},),
        ],
      ),
    );
  }
}

class RecommendCard extends StatelessWidget {
  const RecommendCard({
    Key? key, required this.image, required this.title, required this.time, required this.positive, required this.negative, required this.press,
  }) : super(key: key);

  final String image,title,time;
  final double positive,negative;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      margin:EdgeInsets.only(
        left:kDefaultPadding,
        top:kDefaultPadding/2,
        bottom: kDefaultPadding*2.5,
      ),
      width: size.width*0.5,
      child:Column(
        children: <Widget>[Image.asset(image),
        GestureDetector(
          onTap:press,
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding/2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10),bottomRight: Radius.circular(10), ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,10),
                  blurRadius: 50,
                  color:kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child:Row(
                children: <Widget>[
                  RichText(text: TextSpan(
                    children:[
                      TextSpan(
                        text:"$title "+"\n".toUpperCase(),
                        style:Theme.of(context).textTheme.button,
                  ),TextSpan(
                        text:"$time"+"\n".toUpperCase(),
                        style:TextStyle(color: kPrimaryColor.withOpacity(0.5),
                    ),
                  ),
                  ],
                  ),
                 ),
                 Spacer(),
                 Text('$positive'+'\n',
                 style: Theme.of(context).textTheme.button?.copyWith(color: Colors.green),),
                 Text('$negative',
                 style: Theme.of(context).textTheme.button?.copyWith(color: Colors.red),),
                ],
              )
            ),
        )              
        ],
      )
    );
  }
}
