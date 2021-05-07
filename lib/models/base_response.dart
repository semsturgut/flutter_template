import 'package:flutter/material.dart';
import 'package:flutter_template/services/api_response_status.dart';

abstract class BaseResponse {
  ApiResponseStatus responseStatus;
  BaseResponse({@required this.responseStatus});
}
