import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
class CharsAPI {

  late Dio dio ;

  CharsAPI(){
    BaseOptions options = BaseOptions(
      baseUrl: "https://www.breakingbadapi.com/api/" ,
      receiveDataWhenStatusError: true ,
      connectTimeout: 20*1000 ,
      receiveTimeout: 20*1000 ,


    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getallchars() async{

  Response response = await dio.get('characters');
  return response.data;

  }

}