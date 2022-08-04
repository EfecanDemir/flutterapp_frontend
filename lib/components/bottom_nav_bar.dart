import 'package:flutter/material.dart';
import 'package:flutterapp_frontend/constants.dart';
import 'package:flutterapp_frontend/views/home.dart';
import 'package:flutterapp_frontend/views/marketing.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GNav(
      backgroundColor: kPrimaryColor,
      color: Colors.white,
      activeColor: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      gap: 8,
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'Ana Ekran',
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),    ),);},
        ),
        GButton(
          icon: Icons.auto_awesome_motion_sharp,
          text: 'Kuponlarım',
          //onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Marketing(),    ),);}, 
          ),
        GButton(
          icon: Icons.moving,
          text: 'Oyna', 
          //onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Marketing(),    ),);},
          ),
          GButton(
          icon: Icons.add_box_outlined ,
          text: 'Oluştur', 
          //onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Marketing(),    ),);},
          ),
        GButton(
          icon: Icons.card_giftcard_outlined,
          text: 'Hediyeler', 
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Marketing(),    ),);},
          ),
      ],
    );
  }
}
