import 'package:flutter_template/models/album_response_model.dart';
import 'package:flutter_template/network/network_manager.dart';

class AlbumRepository {
  Future<AlbumResponseModel> getAlbums() async {
    return await NetworkManager.instance.getAlbumList();
  }
}
