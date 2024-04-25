import 'package:flutter/material.dart';
import 'package:high_table_app/Widgets/build_card.dart';



class TabSommelier extends StatelessWidget {
  const TabSommelier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildCard(
            context: context,
            backgroundImage: 'assets/wentru.jpg',
            title: 'Wentru',
            subtitle1: 'Expert in combat stimulant drugs.',
            countryAlpha2Code: 'cl',
            countryName: 'Chile',
            description: 'adsadas'
          ),
          buildCard(
            context: context,
            backgroundImage: 'assets/thesommelier.png',
            title: 'The Sommelier',
            subtitle1: 'Nobody knows his name.',
            countryAlpha2Code: 'it',
            countryName: 'Italy',
            description: 'adsadas'
          ),
        ],
      ),
    );
  }
}
