import 'package:flutter/material.dart';
import 'package:platzi_reto_3/general_ui/list_categories_ui.dart';
import 'components/home_page_component.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ListView Challenge',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: Stack(children: [
          ListView(
            children: [ListCategoriesUI()],
          ),
          HomePageComponent(),
        ])));
  }
}
