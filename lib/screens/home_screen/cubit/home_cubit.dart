import 'package:bloc/bloc.dart';
import 'package:flutter_template/models/job.dart';
import 'package:flutter_template/repository/job_repository.dart';
import 'package:flutter_template/services/api_response_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.loading());

  List<Job> _jobList = List<Job>();

  Future<void> initialize() async {
    try {
      _jobList = await JobRepository().getJobs();
      _buildView();
    } on ApiResponseStatus catch (e) {
      _buildError(apiResponseStatus: e);
    }
  }

  // void _buildLoad() => emit(LoadingState());

  void _buildView() => emit(ViewState(jobList: _jobList));

  void _buildError({@required ApiResponseStatus apiResponseStatus}) =>
      emit(ErrorState(error: handleBaseResponseWithString(apiResponseStatus)));
}
