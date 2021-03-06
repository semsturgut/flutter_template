import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/screens/home_screen/cubit/home_cubit.dart';
import 'package:flutter_template/widgets/loading_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const Duration _changeStateDuration = Duration(milliseconds: 200);

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeCubit cubit = HomeCubit();

  void initState() {
    super.initState();
    cubit.initialize();
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      body:
          BlocProvider(create: (context) => cubit, child: _BuildBodyWidget()));
}

class _BuildBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<HomeCubit, HomeState>(builder: _builder);
}

Widget _builder(BuildContext context, HomeState state) => AnimatedSwitcher(
    duration: _changeStateDuration,
    child: state.maybeMap(
        loading: (loadingState) => LoadingWidget(),
        error: (errorState) => _buildError(context, errorState),
        view: (viewState) => _buildView(context, viewState),
        orElse: () => const Center(child: Text("Unknown problem occured!"))));

Widget _buildView(BuildContext context, ViewState state) {
  return Center(child: Text('Hello!'));
}

Widget _buildError(BuildContext context, ErrorState state) {
  return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Text(state.error),
    CupertinoButton(
        onPressed: context.read<HomeCubit>().initialize, child: Text("Reload"))
  ]));
}
