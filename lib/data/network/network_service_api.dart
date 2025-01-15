import 'dart:io';

import 'package:flutter_clean_code/data/exception/app_exception.dart';
import 'package:flutter_clean_code/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;


class NetworkServiceApi implements BaseApiServices{

  @override
  Future<dynamic> getApi(String url) async{
      dynamic jsonResponse;
     
     try{

      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);

     }on SocketException{
      throw NoInternetException('No Internet Connection');
     }

     return jsonResponse;
  }   

  @override
  Future<dynamic> postApi(String url, var data) async{

    dynamic jsonResponse;
     
     try{

      final response = await http.post(Uri.parse(url),
       body: data
      ).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);
     
     }on SocketException{
      throw NoInternetException('No Internet Connection');
     }

     return jsonResponse;
  }


 dynamic returnResponse(http.Response response){

   switch(response.statusCode){
     case 200:
       dynamic responseJson = response.body;
       return responseJson;
     case 400:
       throw BadRequestException(response.body.toString());
     case 401:
       throw UnauthorizedException(response.body.toString());
     case 403:
     case 500:
     default:
       throw UnauthorizedException();
   }
 }
 
  @override
  Future deleteApi(String url) async{
    dynamic jsonResponse;
     
     try{

      final response = await http.delete(Uri.parse(url)).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);

     }on SocketException{
      throw NoInternetException('No Internet Connection');
     }

     return jsonResponse;
  }

}
