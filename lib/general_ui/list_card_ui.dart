import 'package:flutter/material.dart';
import 'package:platzi_reto_3/general_ui/card_widget_ui.dart';

class ListCardUI extends StatelessWidget {
  dynamic listBands = [];

  ListCardUI(this.listBands);

  @override
  Widget build(BuildContext context) {
    Row bandsList = Row(
      children: getBands(listBands),
    );

    return bandsList;
  }

  getBands(dynamic listBands) {
    dynamic bandListCard = <CardWidgetUI>[];

    for (int i = 0; i < listBands.length; i++) {
      dynamic band = listBands.elementAt(i);
      bandListCard.add(new CardWidgetUI(
          band['bandImagePath'], band['bandName'], band['bandSongs']));
    }

    return bandListCard;
  }
}
