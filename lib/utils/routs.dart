import 'package:flutter/cupertino.dart';
import 'package:invoice/screens/details/personaldetails.dart';
import 'package:invoice/screens/homescreen/home_screen.dart';
import 'package:invoice/screens/items/items_screen.dart';

Map<String,WidgetBuilder> routsName = {
  '/' :(context) => const HomeScreen(),
  'details' :(context) => const DetailsScreen(),
  'items':(context) => const ItemsScreen(),
};