import 'package:flutter/material.dart';
import 'Home.dart';
import 'About.dart';

import 'def/Def.dart';
import 'def/RowColumn.dart';

import 'assignment/20241213/Stairs.dart';
import 'assignment/20241213/Bottom.dart';

import 'def/BoxCon.dart';
import 'def/Con2.dart';

//Java Map ( HashMap Key, Value )
final Map<String, WidgetBuilder> routes = {
  '/home': (context) => Home(),
  '/about': (context) => About(),

  '/def': (context) => Def(),
  '/rowColumn': (context) => Rowcolumn(),

  '/stairs': (context) => Stairs(),
  '/bottom': (context) => Bottom(),

  '/boxCon': (context) => BoxCon(),
  '/con2': (context) => Con2(),
};