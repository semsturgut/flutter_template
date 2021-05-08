import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_template/models/album.dart';
import 'package:flutter_template/models/album_response_model.dart';
import 'package:flutter_template/models/photo.dart';
import 'package:flutter_template/services/api_response_status.dart';
import 'package:http/http.dart' as http;

class NetworkManager {
  static final NetworkManager _singleton = NetworkManager._internal();

  factory NetworkManager() => _singleton;

  static NetworkManager get instance => _singleton;
  http.Client client;
  static int timeOutSeconds = 60;

  static String baseURL;
  void prpUrls() => baseURL = 'https://jsonplaceholder.typicode.com/';

  NetworkManager._internal() {
    client = http.Client();
    prpUrls();
  }

  static final String albumsURL = baseURL + 'albums';
  static final String photosURL = baseURL + 'photos';

  Future<AlbumResponseModel> getAlbumList({int number}) async {
    http.Response response = await doGet(url: albumsURL);
    ApiResponseStatus apiResponseStatus;
    AlbumResponseModel albumResponseModel;
    List<Album> _albumList = List<Album>();
    try {
      apiResponseStatus = _responseStatusConverter(
          statusCode: response.statusCode, control: false);
      var body = jsonDecode(response.body);
      var data = body as List;
      _albumList
          .addAll(data.map<Album>((json) => Album.fromJson(json)).toList());
      albumResponseModel = AlbumResponseModel(
          albumList: _albumList, responseStatus: apiResponseStatus);
    } catch (e) {
      apiResponseStatus = _responseStatusConverter(
          statusCode: response.statusCode, control: false);
      albumResponseModel =
          AlbumResponseModel(albumList: [], responseStatus: apiResponseStatus);
    }
    return albumResponseModel;
  }

  Future<List<Photo>> getPhotoList({int number}) async {
    http.Response response = await doGet(url: photosURL);
    // ApiResponseStatus apiResponseStatus;
    List<Photo> _photoList = List<Photo>();
    try {
      // apiResponseStatus = _responseStatusConverter(
      //     statusCode: response.statusCode, control: false);
      var body = jsonDecode(response.body);
      var data = body as List;
      _photoList
          .addAll(data.map<Photo>((json) => Photo.fromJson(json)).toList());
    } catch (e) {
      // apiResponseStatus = _responseStatusConverter(
      //     statusCode: response.statusCode, control: false);
    }
    return _photoList;
  }

  // Future<dynamic> getLatestComic() async {
  //   http.Response response = await doGet(url: latestComicURL);
  //   final body = jsonDecode(response.body);
  //   ApiResponseStatus apiResponseStatus =
  //       _responseStatusConverter(statusCode: response.statusCode);
  //   return Comic.fromJson(body, apiResponseStatus);
  // }

  // Future<Comic> getComicFromNumber({int number}) async {
  //   http.Response response =
  //       await doGet(url: baseURL + number.toString() + '/' + infoURL);
  //   Map<String, dynamic> body = Map<String, dynamic>();
  //   Comic _comic = Comic();
  //   ApiResponseStatus apiResponseStatus;
  //   try {
  //     apiResponseStatus = _responseStatusConverter(
  //         statusCode: response.statusCode, control: false);
  //     body = jsonDecode(response.body);
  //     _comic = Comic.fromJson(body, apiResponseStatus);
  //   } catch (e) {
  //     _comic = Comic(
  //       img: "",
  //       title: handleBaseResponseWithString(apiResponseStatus),
  //       number: number,
  //       alt: e.toString(),
  //       responseStatus: apiResponseStatus,
  //     );
  //   }
  //   return _comic;
  // }

  ApiResponseStatus _responseStatusConverter(
      {@required int statusCode, bool control = true}) {
    ApiResponseStatus apiResponseStatus =
        handleApiStatusWithBaseResponse(statusCode);

    /// This will handle all response status codes and throw as a exception
    if (apiResponseStatus != ApiResponseStatus.successful && control)
      throw apiResponseStatus;

    return apiResponseStatus;
  }

  Future<http.Response> doGet(
      {@required String url, Map<String, String> queryParameters}) async {
    // FlutterSecureStorage storage = FlutterSecureStorage();
    // String token = await storage.read(key: 'token');
    Map<String, String> header = {
      'Content-Type': 'application/json',
      // 'Authorization': "Bearer " + token
    };
    final parsedUrl = Uri.parse(url).replace(queryParameters: queryParameters);
    http.Response response;
    try {
      response = await NetworkManager.instance.client
          .get(parsedUrl, headers: header)
          .timeout(Duration(seconds: timeOutSeconds));
    } on SocketException {
      /// Generic response checker for no connection
      throw ApiResponseStatus.noConnection;
    } catch (e) {
      /// Generic response checker for unexpected errors
      throw ApiResponseStatus.otherError;
    }
    return response;
  }

  // Future<http.Response> doPost(
  //     {@required String url, dynamic body, bool useToken = true}) async {
  //   // FlutterSecureStorage storage = FlutterSecureStorage();
  //   // String token = await storage.read(key: 'token');
  //   Map<String, String> headers = {
  //     'Content-Type': 'application/json',
  //     // if (useToken) 'Authorization': "Bearer " + token
  //   };
  //   final myBody = jsonEncode(body);
  //   final parsedUrl = Uri.parse(url);
  //   developer.log(url, name: 'Request Url');
  //   if (useToken) developer.log(myBody, name: 'Request Body');
  //   return await NetworkManager.instance.client
  //       .post(parsedUrl, headers: headers, body: myBody)
  //       .timeout(Duration(minutes: timeOutSeconds));
  // }
}
