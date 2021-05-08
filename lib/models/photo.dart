
import 'package:flutter_template/models/base_response.dart';

class Photo extends BaseResponse {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  Photo.fromJson(Map<String, dynamic> json) {
    if(json["albumId"] is int)
      this.albumId = json["albumId"];
    if(json["id"] is int)
      this.id = json["id"];
    if(json["title"] is String)
      this.title = json["title"];
    if(json["url"] is String)
      this.url = json["url"];
    if(json["thumbnailUrl"] is String)
      this.thumbnailUrl = json["thumbnailUrl"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["albumId"] = this.albumId;
    data["id"] = this.id;
    data["title"] = this.title;
    data["url"] = this.url;
    data["thumbnailUrl"] = this.thumbnailUrl;
    return data;
  }
}