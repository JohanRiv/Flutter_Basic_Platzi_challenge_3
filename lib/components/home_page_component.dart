import 'package:flutter/material.dart';
import 'package:platzi_reto_3/general_ui/button_action_ui.dart';

class HomePageComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Row buttonRow = Row(
      children: [
        ButtonActionUI("For You", "On", 30, 100),
        ButtonActionUI("Trending", "Off", 30, 100),
        ButtonActionUI("Popular", "Off", 30, 100),
      ],
    );

    Container header = Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 15),
        height: 120,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 60),
                child: buttonRow)
          ],
        ));

    return header;
  }
}
