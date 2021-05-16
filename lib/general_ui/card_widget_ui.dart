import 'package:flutter/material.dart';
import 'package:platzi_reto_3/tools_ui/palette_colors_ui.dart';

class CardWidgetUI extends StatelessWidget {
  String cardImagePath = "";
  String cardBandName = "";
  String cardSongs = "";

  CardWidgetUI(this.cardImagePath, this.cardBandName, this.cardSongs);
  @override
  Widget build(BuildContext context) {
    Container cardImage = Container(
      height: 150,
      width: 150,
      margin: EdgeInsets.only(right: 15, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage(cardImagePath)),
      ),
    );

    Container cardTextBand = Container(
        width: MediaQuery.of(context).size.width * 0.35,
        child: Text(
          cardBandName,
          style: TextStyle(
              color: PaletteColors().colorsPrimary['primaryTextDark'],
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: "OpenSans"),
        ));

    Container cardTextSongs = Container(
        margin: EdgeInsets.only(bottom: 5),
        child: Text(
          cardSongs + ' Songs',
          style: TextStyle(
              color: PaletteColors().colorsPrimary['primaryTextMid'],
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: "OpenSans"),
        ));

    Column cardBand = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [cardImage, cardTextBand, cardTextSongs],
    );

    return cardBand;
  }
}
