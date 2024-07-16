import 'dart:io';

import 'package:flutter_clean_code/data/exception/app_exception.dart';
import 'package:flutter_clean_code/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;


class NetworkServiceApi implements BaseApiServices{

  @override
  Future<dynamic> getApi(String url) async{
    // TODO: implement getApi
     
     try{

     }on SocketException{
      throw NoInternetException('No Internet Connection');
     }
  }   

  @override
  Future<dynamic> postApi(String url, var data) async{

    throw UnimplementedError();
  }
}
