import 'package:flutter/material.dart';
import 'package:helloworld/routes.dart';
import 'package:helloworld/routes.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
