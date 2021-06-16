import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_template/models/response_models/customer_response_model.dart';
import 'package:http/http.dart' as http;

class NetworkManager {
  static final NetworkManager _singleton = NetworkManager._internal();

  factory NetworkManager() => _singleton;

  static NetworkManager get instance => _singleton;
  http.Client client;
  static int timeOutSeconds = 60;

  static String baseURL;
  /// TODO: baseURL required
  void prpUrls() =>
      baseURL = '';

  NetworkManager._internal() {
    client = http.Client();
    prpUrls();
  }

  static final String customerListURL = baseURL + 'customers';

  Future<CustomerResponseModel> getCustomerList() async {
    http.Response response = await doGet(url: customerListURL);
    CustomerResponseModel customerResponseModel = CustomerResponseModel();
    try {
      var body = jsonDecode(response.body);
      return CustomerResponseModel.fromJson(body);
    } catch (e) {
      debugPrint(e.toString());
    }
    return customerResponseModel;
  }

  Future<http.Response> doGet(
      {@required String url, Map<String, String> queryParameters}) async {
    Map<String, String> header = {
      'Content-Type': 'application/json',
      /// TODO: Username and Password required.
      'authorization': "Basic " +
          base64Encode(utf8.encode("username:password"))
    };
    final parsedUrl = Uri.parse(url).replace(queryParameters: queryParameters);
    http.Response response;
    try {
      response = await NetworkManager.instance.client
          .get(parsedUrl, headers: header)
          .timeout(Duration(seconds: timeOutSeconds));
    } catch (e) {
      throw e;
    }
    return response;
  }
}
