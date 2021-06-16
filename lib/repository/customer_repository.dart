import 'package:flutter_template/models/response_models/customer_response_model.dart';
import 'package:flutter_template/network/network_manager.dart';

class CustomerRepository {
  Future<CustomerResponseModel> getCustomers() async {
    return await NetworkManager.instance.getCustomerList();
  }
}