

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:internship_task_api/data/app_exceptions.dart';
import 'package:internship_task_api/data/services/base_api_services.dart';
import 'package:http/http.dart' as  http;

class NetworkApiServices  extends BaseApiServices{

  @override
  Future<dynamic> getApi(String  url)async{

    dynamic returnJson;

    try{
      final response  = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      returnJson  =returnResponse(response);
    }on SocketException {
    throw InternetExceptions('');
  }
  return  returnJson;
  }

  dynamic returnResponse(http.Response  response){
    switch(response.statusCode){
      case  200:
        dynamic returnJson  = jsonDecode(response.body);
        return returnJson;
      case  400:
        throw InvalidUrl('');
      default:
        NetworkException('');
    }

  }

}