

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/presentation/modules/home/home_places.dart';

import 'constants/strings.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => HomePlaces(

          ),
        );
      case exchangeScreen:
        return MaterialPageRoute(
          builder: (_) => HomePlaces(

          ),
        );



    }
  }
}

