import 'package:flutter/material.dart';
import 'package:flutterapp_frontend/model/task_model.dart';
import 'package:flutterapp_frontend/service/service.dart';
import 'package:grock/grock.dart';
import 'package:flutterapp_frontend/views/home/components/loading_popup.dart';


class HomeRiverpod extends ChangeNotifier {
  List<TaskModelData?> datas = [];
  final service = Service();
  bool isLoading = false;

  void getData() {
    isLoading = true;
    service.taskCall().then((value) {
      if (value != null && value.success == true) {
        datas = value.data!;

        isLoading = false;
        notifyListeners();
      } else {
        isLoading = false;
        notifyListeners();
        Grock.snackBar(title: "Hata", description: "Bir sorun oluştu");
      }
    });
  }
}
