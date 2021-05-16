import 'package:flutter/material.dart';
import 'package:platzi_reto_3/general_ui/list_card_ui.dart';
import 'package:platzi_reto_3/tools_ui/palette_colors_ui.dart';

class ListCategoriesUI extends StatelessWidget {
  final listBandsPlayList = [
    {
      'bandImagePath': 'assets/images/bands/sayuri.jpg',
      'bandName': 'Sayuri',
      'bandSongs': '14',
    },
    {
      'bandImagePath': 'assets/images/bands/yui.jpg',
      'bandName': 'Yui',
      'bandSongs': '21',
    },
    {
      'bandImagePath': 'assets/images/bands/uverworld.jpg',
      'bandName': 'Uverworld',
      'bandSongs': '28',
    },
    {
      'bandImagePath': 'assets/images/bands/flow.jpg',
      'bandName': 'Flow',
      'bandSongs': '14',
    },
  ];

  final listBandsFrequently = [
    {
      'bandImagePath': 'assets/images/bands/scandal.jpg',
      'bandName': 'Scandal',
      'bandSongs': '13',
    },
    {
      'bandImagePath': 'assets/images/bands/unison_square_garden.jpg',
      'bandName': 'Unison Square Garden',
      'bandSongs': '9',
    },
    {
      'bandImagePath': 'assets/images/bands/stereopony.jpg',
      'bandName': 'Stereopony',
      'bandSongs': '17',
    },
    {
      'bandImagePath': 'assets/images/bands/the_oral_cigarettes.jpg',
      'bandName': 'The Oral Cigarettes',
      'bandSongs': '29',
    },
  ];

  final listBandsPopular = [
    {
      'bandImagePath': 'assets/images/bands/frederic.jpg',
      'bandName': 'Frederic',
      'bandSongs': '7',
    },
    {
      'bandImagePath': 'assets/images/bands/nano.jpg',
      'bandName': 'Nano',
      'bandSongs': '18',
    },
    {
      'bandImagePath': 'assets/images/bands/funkist.jpg',
      'bandName': 'Funkist',
      'bandSongs': '26',
    },
    {
      'bandImagePath': 'assets/images/bands/aimer.jpg',
      'bandName': 'Aimer',
      'bandSongs': '23',
    },
  ];

  final listBandsSuggest = [
    {
      'bandImagePath': 'assets/images/bands/bump_of_chicken.jpg',
      'bandName': 'Bump Of Chicken',
      'bandSongs': '14',
    },
    {
      'bandImagePath': 'assets/images/bands/asian_kung_fu_generation.jpg',
      'bandName': 'Asian Kung Fu Generation',
      'bandSongs': '43',
    },
    {
      'bandImagePath': 'assets/images/bands/blue_encount.jpg',
      'bandName': 'Blue Encount',
      'bandSongs': '21',
    },
    {
      'bandImagePath': 'assets/images/bands/scandal.jpg',
      'bandName': 'Scandal',
      'bandSongs': '23',
    },
  ];

  @override
  Widget build(BuildContext context) {
    Container listPlayList = Container(
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [new ListCardUI(listBandsPlayList)],
      ),
    );

    Container listFrequently = Container(
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [new ListCardUI(listBandsFrequently)],
      ),
    );

    Container listPopular = Container(
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [new ListCardUI(listBandsPopular)],
      ),
    );

    Container listSuggest = Container(
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [new ListCardUI(listBandsSuggest)],
      ),
    );

    Container listCategories = Container(
        margin: EdgeInsets.only(top: 110, left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            setName('YOUR PLAYLISTS'),
            listPlayList,
            setName('MOST FREQUENTLY PLAYED'),
            listFrequently,
            setName('MOST POPULAR'),
            listPopular,
            setName('SUGGEEST'),
            listSuggest
          ],
        ));

    return listCategories;
  }

  setName(String categorieName) {
    Container textPlayList = Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Text(
          categorieName,
          style: TextStyle(
              color: PaletteColors().colorsPrimary['primaryTextDark'],
              fontSize: 22,
              fontFamily: "OpenSans",
              fontWeight: FontWeight.w700),
        ));

    return textPlayList;
  }
}
