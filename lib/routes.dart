import 'package:flutter/material.dart';
import 'package:shopping_app/details/details_screen.dart';
import 'package:shopping_app/home/home_screen.dart';
import 'package:shopping_app/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  SplasScreen.routeName: (context) => const SplasScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
};
