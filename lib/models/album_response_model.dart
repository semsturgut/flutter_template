import 'package:flutter_template/models/album.dart';
import 'package:flutter_template/models/base_response.dart';
import 'package:flutter_template/services/api_response_status.dart';

class AlbumResponseModel extends BaseResponse {
  List<Album> albumList;

  AlbumResponseModel({
    this.albumList,
    ApiResponseStatus responseStatus,
  }) : super(responseStatus: responseStatus);

  factory AlbumResponseModel.fromJson(Map<String, dynamic> jsonElement) {
    var data = jsonElement as List;
    List<Album> _tempAlbum =
        data.map<Album>((json) => Album.fromJson(json)).toList();
    return AlbumResponseModel(albumList: _tempAlbum);
  }
}
