import 'package:flutter/material.dart';
import 'package:flutterapp_frontend/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GNav(
      backgroundColor: kPrimaryColor,
      color: Colors.white,
      activeColor: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      gap: 8,
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'Ana Ekran',  
        ),
        GButton(
          icon: Icons.favorite_border,
          text: 'Kuponlar', 
          ),
        GButton(
          icon: Icons.moving,
          text: 'Oyna', 
          ),
        GButton(
          icon: Icons.card_giftcard_outlined,
          text: 'Hediyeler', 
          ),
      ],
    );
  }
}
