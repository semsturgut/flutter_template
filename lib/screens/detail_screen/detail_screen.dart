import 'package:flutter/material.dart';
import 'package:flutter_template/models/customer.dart';

class DetailScreen extends StatefulWidget {
  final Customer customer;
  const DetailScreen({Key key, @required this.customer}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.customer.id),
      ),
    );
  }
}
