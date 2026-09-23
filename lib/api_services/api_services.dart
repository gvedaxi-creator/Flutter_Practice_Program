import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:vedaxi/register/register_model.dart';
import 'package:vedaxi/tree_plant/tree_model.dart';

import '../login/login_model.dart';


class ApiServices {
  Dio dio = Dio();

  Future<Login> login(String email, String password) async {
    try {
      final respo = await http.post(
        Uri.parse("https://www.anniecabs.com/LJ/index.php/api/login"),
        body: {"Email": email, "Password": password},
      );
      print(respo);

      if (respo.statusCode == 200 || respo.statusCode == 201) {
        final decode = jsonDecode(respo.body);
        final userValue = Login.fromJson(decode);
        return userValue;
      } else {
        throw Exception("Error!!!");
      }
    } catch (e) {
      print(e.toString());
      throw Exception("Error!!!");
    }
  }

  Future<Register> register() async {
    try {
      final respo = await http.post(
        Uri.parse("https://www.anniecabs.com/LJ/index.php/api/register"),
      );
      print(respo);

      if (respo.statusCode == 200 || respo.statusCode == 201) {
        final decode = jsonDecode(respo.body);
        final userValue = Register.fromJson(decode);
        return userValue;
      } else {
        throw Exception("Error!!!");
      }
    } catch (e) {
      print(e.toString());
      throw Exception("Error!!!");
    }
  }

  Future<Tree> tree() async {  // function datatype is Tree model class name and tree is function name
    try {
      final respo = await dio.get("https://www.anniecabs.com/LJ/index.php/api/get_tree_plant");

      if(respo.statusCode == 200){
        final userValue = Tree.fromJson(respo.data); // use model name here
        return userValue;
      }
      else{
        throw Exception("Error!!!");
      }
    } catch (e) {
      print(e.toString());
      throw Exception("Error!!!");
    }
  }
}
