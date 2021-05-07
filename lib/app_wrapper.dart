import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/screens/home_screen/home_screen.dart';
import 'package:flutter_template/services/bloc_observer_service.dart';

Future<void> initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = BlocObserverService();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class AppWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Template',
      home: HomeScreen(),
    );
  }
}
