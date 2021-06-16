import 'package:bloc/bloc.dart';
import 'package:flutter_template/models/customer.dart';
import 'package:flutter_template/models/response_models/customer_response_model.dart';
import 'package:flutter_template/repository/customer_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.loading());

  // List<Customer> _customerList = [];
  CustomerResponseModel _customerResponseModel;
  CustomerRepository _customerRepository = CustomerRepository();

  Future<void> initialize() async {
    try {
      /// download for customer
      _customerResponseModel = await _customerRepository.getCustomers();
      _buildView();
    } catch (e) {
      _buildError(apiResponseStatus: e.toString());
    }
  }

  // void _buildLoad() => emit(LoadingState());

  void _buildView() => emit(ViewState(customerList:  _customerResponseModel.customerList));

  void _buildError({@required String apiResponseStatus}) =>
      emit(ErrorState(error: apiResponseStatus));
}
