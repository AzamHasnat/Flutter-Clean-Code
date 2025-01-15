import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_clean_code/data/exception/app_exception.dart';
import 'package:flutter_clean_code/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkServiceApi implements BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    // TODO: implement getApi
    dynamic jsonReponse;
    try {
      final response =
          await http.get(Uri.parse("uri")).timeout(const Duration(seconds: 50));

        jsonReponse = returnResponse(response);  

      /* if (response.statusCode == 200) {
        return response.body;
      } */
    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException("Timeout Exception");
    }

    return jsonReponse;
  }
  @override
  Future<dynamic> deleteApi(String url) async {
    // TODO: implement getApi
    dynamic jsonReponse;
    try { 
      final response =
          await http.delete(Uri.parse("uri")).timeout(const Duration(seconds: 50));

        jsonReponse = returnResponse(response);  

    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException("Timeout Exception");
    }

    return jsonReponse;
  }

  @override
  Future<dynamic> postApi(String url, var data) async {
     dynamic jsonReponse;
    try {
      final response =
          await http.post(Uri.parse("uri"),
          body: data
          ).timeout(const Duration(seconds: 50));

        jsonReponse = returnResponse(response);  

    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException("Timeout Exception");
    }
    return jsonReponse;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 500:
        throw FetchDataException(
            'Error communication with server ${response.statusCode}');
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
