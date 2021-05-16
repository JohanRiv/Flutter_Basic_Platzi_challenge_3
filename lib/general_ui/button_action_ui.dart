import 'package:flutter/material.dart';
import 'package:platzi_reto_3/tools_ui/palette_colors_ui.dart';

class ButtonActionUI extends StatelessWidget {
  String buttonText = "Text";
  String buttonDecoration = "On";
  double buttonHeight = 20;
  double buttonWidth = 50;

  ButtonActionUI(this.buttonText, this.buttonDecoration, this.buttonHeight,
      this.buttonWidth);

  @override
  Widget build(BuildContext context) {
    InkWell buttonAction = InkWell(
      child: Container(
        alignment: Alignment(0, 0),
        margin: EdgeInsets.only(top: 10, right: 10),
        height: buttonHeight,
        width: buttonWidth,
        decoration: decorationType(buttonDecoration),
        child: Text(
          buttonText,
          style: TextStyle(
              color: textColor(buttonDecoration),
              fontFamily: "OpenSans",
              fontSize: 15,
              fontWeight: FontWeight.w700),
        ),
      ),
    );

    return buttonAction;
  }

  textColor(String buttonDecoration) {
    if (buttonDecoration == "On") {
      return PaletteColors().colorsPrimary['primaryTextLight'];
    } else {
      return PaletteColors().colorsPrimary['primaryTextMid'];
    }
  }

  decorationType(String buttonDecoration) {
    BoxDecoration buttonDecorationOn = BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
            colors: [
              PaletteColors().colorsPrimary['primaryDart'],
              PaletteColors().colorsSecondary['secondaryDart'],
            ],
            begin: FractionalOffset(0.2, 0),
            end: FractionalOffset(1, 0.6),
            stops: [0, 0.6],
            tileMode: TileMode.clamp));

    BoxDecoration buttonDecorationOff = BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
            colors: [
              PaletteColors().colorsPrimary['primaryTextLight'],
              PaletteColors().colorsPrimary['primaryTextLight'],
            ],
            begin: FractionalOffset(0.2, 0),
            end: FractionalOffset(1, 0.6),
            stops: [0, 0.6],
            tileMode: TileMode.clamp));

    if (buttonDecoration == "On") {
      return buttonDecorationOn;
    } else if (buttonDecoration == "Off") {
      return buttonDecorationOff;
    } else {
      return buttonDecorationOn;
    }
  }
}
