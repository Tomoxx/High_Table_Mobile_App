import 'package:flutter/material.dart';
import 'package:high_table_app/Widgets/build_card.dart';



class TabTailor extends StatelessWidget {
  const TabTailor({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: ListView(
        children: [
          buildCard(
            context: context,
            backgroundImage: 'assets/thetailor.png',
            title: 'The Tailor',
            subtitle1: 'Dress for any ocasion.',
            countryAlpha2Code: 'it',
            countryName: 'Italy',
            description: 'adsadas',
          ),
          buildCard(
            context: context,
            backgroundImage: 'assets/charli.png',
            title: 'Charli XCX',
            subtitle1: 'OMG CHARLI !!!!',
            countryAlpha2Code: 'gb',
            countryName: 'United Kingdom',
            description: 'adsadas',
          ),
        ],
      ),
    );
  }
}