// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  InitialState initial() {
    return const InitialState();
  }

  LoadingState loading() {
    return const LoadingState();
  }

  ViewState view({AlbumResponseModel albums, List<Photo> photos}) {
    return ViewState(
      albums: albums,
      photos: photos,
    );
  }

  ErrorState error({@required String error}) {
    return ErrorState(
      error: error,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result view(AlbumResponseModel albums, List<Photo> photos),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result view(AlbumResponseModel albums, List<Photo> photos),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialState value),
    @required Result loading(LoadingState value),
    @required Result view(ViewState value),
    @required Result error(ErrorState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialState value),
    Result loading(LoadingState value),
    Result view(ViewState value),
    Result error(ErrorState value),
    @required Result orElse(),
  });
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

abstract class $InitialStateCopyWith<$Res> {
  factory $InitialStateCopyWith(
          InitialState value, $Res Function(InitialState) then) =
      _$InitialStateCopyWithImpl<$Res>;
}

class _$InitialStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $InitialStateCopyWith<$Res> {
  _$InitialStateCopyWithImpl(
      InitialState _value, $Res Function(InitialState) _then)
      : super(_value, (v) => _then(v as InitialState));

  @override
  InitialState get _value => super._value as InitialState;
}

class _$InitialState implements InitialState {
  const _$InitialState();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result view(AlbumResponseModel albums, List<Photo> photos),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result view(AlbumResponseModel albums, List<Photo> photos),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialState value),
    @required Result loading(LoadingState value),
    @required Result view(ViewState value),
    @required Result error(ErrorState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialState value),
    Result loading(LoadingState value),
    Result view(ViewState value),
    Result error(ErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements HomeState {
  const factory InitialState() = _$InitialState;
}

abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
}

class _$LoadingStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState _value, $Res Function(LoadingState) _then)
      : super(_value, (v) => _then(v as LoadingState));

  @override
  LoadingState get _value => super._value as LoadingState;
}

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result view(AlbumResponseModel albums, List<Photo> photos),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result view(AlbumResponseModel albums, List<Photo> photos),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialState value),
    @required Result loading(LoadingState value),
    @required Result view(ViewState value),
    @required Result error(ErrorState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialState value),
    Result loading(LoadingState value),
    Result view(ViewState value),
    Result error(ErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements HomeState {
  const factory LoadingState() = _$LoadingState;
}

abstract class $ViewStateCopyWith<$Res> {
  factory $ViewStateCopyWith(ViewState value, $Res Function(ViewState) then) =
      _$ViewStateCopyWithImpl<$Res>;
  $Res call({AlbumResponseModel albums, List<Photo> photos});
}

class _$ViewStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $ViewStateCopyWith<$Res> {
  _$ViewStateCopyWithImpl(ViewState _value, $Res Function(ViewState) _then)
      : super(_value, (v) => _then(v as ViewState));

  @override
  ViewState get _value => super._value as ViewState;

  @override
  $Res call({
    Object albums = freezed,
    Object photos = freezed,
  }) {
    return _then(ViewState(
      albums: albums == freezed ? _value.albums : albums as AlbumResponseModel,
      photos: photos == freezed ? _value.photos : photos as List<Photo>,
    ));
  }
}

class _$ViewState implements ViewState {
  const _$ViewState({this.albums, this.photos});

  @override
  final AlbumResponseModel albums;
  @override
  final List<Photo> photos;

  @override
  String toString() {
    return 'HomeState.view(albums: $albums, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ViewState &&
            (identical(other.albums, albums) ||
                const DeepCollectionEquality().equals(other.albums, albums)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(albums) ^
      const DeepCollectionEquality().hash(photos);

  @override
  $ViewStateCopyWith<ViewState> get copyWith =>
      _$ViewStateCopyWithImpl<ViewState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result view(AlbumResponseModel albums, List<Photo> photos),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(error != null);
    return view(albums, photos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result view(AlbumResponseModel albums, List<Photo> photos),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (view != null) {
      return view(albums, photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialState value),
    @required Result loading(LoadingState value),
    @required Result view(ViewState value),
    @required Result error(ErrorState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(error != null);
    return view(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialState value),
    Result loading(LoadingState value),
    Result view(ViewState value),
    Result error(ErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (view != null) {
      return view(this);
    }
    return orElse();
  }
}

abstract class ViewState implements HomeState {
  const factory ViewState({AlbumResponseModel albums, List<Photo> photos}) =
      _$ViewState;

  AlbumResponseModel get albums;
  List<Photo> get photos;
  $ViewStateCopyWith<ViewState> get copyWith;
}

abstract class $ErrorStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$ErrorStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(ErrorState _value, $Res Function(ErrorState) _then)
      : super(_value, (v) => _then(v as ErrorState));

  @override
  ErrorState get _value => super._value as ErrorState;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ErrorState(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

class _$ErrorState implements ErrorState {
  const _$ErrorState({@required this.error}) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorState &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result view(AlbumResponseModel albums, List<Photo> photos),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result view(AlbumResponseModel albums, List<Photo> photos),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialState value),
    @required Result loading(LoadingState value),
    @required Result view(ViewState value),
    @required Result error(ErrorState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialState value),
    Result loading(LoadingState value),
    Result view(ViewState value),
    Result error(ErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements HomeState {
  const factory ErrorState({@required String error}) = _$ErrorState;

  String get error;
  $ErrorStateCopyWith<ErrorState> get copyWith;
}
