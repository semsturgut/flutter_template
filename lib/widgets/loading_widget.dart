import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget() : super();
  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}
