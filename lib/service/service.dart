import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutterapp_frontend/model/login_model.dart';
import 'package:flutterapp_frontend/model/task_model.dart';
import 'package:get_storage/get_storage.dart';

class Service{
  final String baseUrl="https://10.0.2.2:5001/";
  final dio=Dio();
  Future<LoginModel?> loginCall({
    required String email,
    required String password
  })async{
    Map<String,dynamic>json={
            "email":email,
            "password":password
    };
    var response=await dio.post(baseUrl+"api/auth/login",data: json);
    if(response.statusCode==200){
      var result=LoginModel.fromJson(response.data);
      log("Gelen Response => ${response.data}");
      return result;
    }else{
      throw("Bir sorun oluştu ${response.statusCode}");
      return null;
    }
  }

    Future<TaskModel?> taskCall()async{
      String token = await GetStorage().read("token");
    var response=await dio.get(baseUrl+"api/categories/getall",options: Options(headers: {"Authorization":"Bearer $token"}));
    if(response.statusCode==200){
      var result=TaskModel.fromJson(response.data);
      log("Gelen Response => ${response.data}");
      return result;
    }else{
      throw("Bir sorun oluştu ${response.statusCode}");
      return null;
    }
  }



    Future<LoginModel?> registerCall({
    required String userName,
    required String email,
    required String password
  })async{
    Map<String,dynamic>json={
            "userName":userName,
            "email":email,
            "password":password
    };
    var response=await dio.post(baseUrl+"api/auth/register",data: json);
    if(response.statusCode==200){
      var result=LoginModel.fromJson(response.data);
      log("Gelen Response => ${response.data}");
      return result;
    }else{
      throw("Bir sorun oluştu ${response.statusCode}");
      return null;
    }
  }


}
