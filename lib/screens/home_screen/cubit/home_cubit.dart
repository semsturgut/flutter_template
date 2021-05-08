import 'package:bloc/bloc.dart';
import 'package:flutter_template/models/album_response_model.dart';
import 'package:flutter_template/models/photo.dart';
import 'package:flutter_template/repository/album_repository.dart';
import 'package:flutter_template/repository/photo_repository.dart';
import 'package:flutter_template/services/api_response_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.loading());

  AlbumResponseModel _albums;
  List<Photo> _photos = List<Photo>();

  Future<void> initialize() async {
    try {
      _albums = await AlbumRepository().getAlbums();
      _photos = await PhotoRepository().getPhotos();
      _buildView();
    } on ApiResponseStatus catch (e) {
      _buildError(apiResponseStatus: e);
    }
  }

  // void _buildLoad() => emit(LoadingState());

  void _buildView() => emit(ViewState(albums: _albums, photos: _photos));

  void _buildError({@required ApiResponseStatus apiResponseStatus}) =>
      emit(ErrorState(error: handleBaseResponseWithString(apiResponseStatus)));
}
