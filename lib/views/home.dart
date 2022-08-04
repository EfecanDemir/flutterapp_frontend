import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterapp_frontend/views/home/components/body.dart';
import 'package:flutterapp_frontend/components/bottom_nav_bar.dart';
import 'package:flutterapp_frontend/constants.dart';
import 'package:flutterapp_frontend/riverpod/home_riverpod.dart';
import 'package:flutterapp_frontend/riverpod/riverpod_managment.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:grock/grock.dart';


class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  void initState() {
    ref.read(homeRiverpod).getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var state = ref.watch(homeRiverpod);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed:(){},
      ),
    );
  }
}
