import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './gitSearch/index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(AhunProject());
}

class AhunProject extends StatelessWidget {
  AhunProject({Key? key}) : super(key: key);

  final GitSearchBloc gitSearchBloc =
      GitSearchBloc(GitSearchRepository(GitSearchDataProvider()));

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => gitSearchBloc,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Search(),
      ),
    );
  }
}
