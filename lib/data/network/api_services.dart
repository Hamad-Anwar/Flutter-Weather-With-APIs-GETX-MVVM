import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../app_exceptions.dart';
import 'base_api_services.dart';

class ApiServices extends BaseApiServices {
  @override
  Future getApi(String url) async {
    var jsonData;
    try {
      var response = await http.get(Uri.parse(url)).timeout(
          const Duration(seconds: 10));
      jsonData = jsonResponse(response);
    } on SocketException {
      throw InternetException('No Internet');
    } on RequestTimeOut {
      throw RequestTimeOut('Request Timeout');
    }
    return jsonData;
  }

  dynamic jsonResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 400:
        var jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      default:
        throw FetchDataException(
            'Error while Communication ${response.statusCode}');
    }
  }


}