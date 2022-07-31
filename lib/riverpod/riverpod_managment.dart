import 'package:flutterapp_frontend/riverpod/home_riverpod.dart';
import 'package:flutterapp_frontend/riverpod/login_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginRiverpod = ChangeNotifierProvider((_) => LoginRiverpod());
final homeRiverpod = ChangeNotifierProvider((_) => HomeRiverpod());
