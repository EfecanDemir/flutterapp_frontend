import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';




class ButtonSelect extends StatelessWidget {
  const ButtonSelect({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: size.width/2,
          height: 60,
          child: SlideAction(
              height: 200,
              outerColor: Colors.green,
              //onSubmit: ()=>ref.read(loginRiverpod).fetch(),
              child: const Text(
                "1.25",
              ),
          ),
        ),
        SizedBox(
          width: size.width/2,
          height: 60,
          child: SlideAction(
              height: 200,
              outerColor: Colors.red,
              //onSubmit: ()=>ref.read(loginRiverpod).fetch(),
              child: const Text(
                "3.75",
              ),
          ),
        ),
      ],
    );
  }
}
