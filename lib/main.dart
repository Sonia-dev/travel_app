import 'package:flutter/material.dart';
import 'package:travel_app/app_router.dart';
import 'package:travel_app/presentation/modules/home/home_places.dart';

void main() {
  runApp(MyApp(
    approuter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter approuter;

  const MyApp({
    Key? key,
    required this.approuter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: approuter.onGenerateRoute,
    );
  }
}
