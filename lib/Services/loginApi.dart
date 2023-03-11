// ignore_for_file: avoid_print, unused_local_variable, prefer_typing_uninitialized_variables, non_constant_identifier_names, file_names, prefer_interpolation_to_compose_strings

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoginApi {
  static Future Login(String username, String password) async {
    Dio dio = Dio();
    try {
      var result;
      var body = {
        "usename": username,
        "password": password,
      };

      var response = await dio.get(
        "https://thewebconcept.com/hotel2/api/login.php?type=logininfo&username=$username&password=$password",
      );

      if (response.data != null) {
        var result = jsonDecode(response.data.toString());

        print(response.data);
      } else if (result['isSuccess'].toString() == '0') {
        return const SnackBar(
            content: Text("Username or password Incorrect...!"));
      } else {
        print((".....Wrong,please try again......."));
      }
      print("this is your result" + result);
      return result;
    } catch (e) {
      print(e);
    }
  }
}
