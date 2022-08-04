import 'package:flutter/material.dart';
import 'package:flutterapp_frontend/constants.dart';


class TitleandDescription extends StatelessWidget {
  const TitleandDescription({
    Key? key, required this.title, required this.description,
  }) : super(key: key);

  final String title,description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: <Widget>[RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontSize: 25,
                    color: kTextColor,
                    fontWeight: FontWeight.bold
                  ),
                ),
                TextSpan(
                  text: description,
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                    fontSize: 25,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




