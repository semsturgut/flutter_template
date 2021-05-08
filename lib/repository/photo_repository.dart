import 'package:flutter_template/models/photo.dart';
import 'package:flutter_template/network/network_manager.dart';

class PhotoRepository {
  Future<List<Photo>> getPhotos() async {
    return await NetworkManager.instance.getPhotoList();
  }
}
