import 'package:flutter_template/models/customer.dart';

class CustomerResponseModel {
  List<Customer> customerList;

  CustomerResponseModel({this.customerList});

  factory CustomerResponseModel.fromJson(Map<String, dynamic> jsonElement) {
    var data = jsonElement["customers"] as List;
    List<Customer> _tempCustomer =
        data.map<Customer>((json) => Customer.fromJson(json)).toList();
    return CustomerResponseModel(customerList: _tempCustomer);
  }
}
