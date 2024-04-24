import 'package:flutter/material.dart';
import 'package:high_table_app/Widgets/buildcard.dart';



class TabSommelier extends StatelessWidget {
  const TabSommelier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildCard(
            backgroundImage: 'assets/wentru.jpg',
            title: 'Wentru',
            subtitle1: 'Expert in combat stimulant drugs.',
            countryAlpha2Code: 'cl',
            countryName: 'Chile',
          ),
          buildCard(
            backgroundImage: 'assets/thesommelier.png',
            title: 'The Sommelier',
            subtitle1: 'Nobody knows his name.',
            countryAlpha2Code: 'it',
            countryName: 'Italy',
          ),
        ],
      ),
    );
  }
}
