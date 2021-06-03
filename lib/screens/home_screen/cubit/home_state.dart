part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = InitialState;
  const factory HomeState.loading() = LoadingState;
  const factory HomeState.view({List<Job> jobList}) = ViewState;
  const factory HomeState.error({@required String error}) = ErrorState;
}
