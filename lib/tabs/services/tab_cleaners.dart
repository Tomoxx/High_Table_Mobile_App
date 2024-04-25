import 'package:flutter/material.dart';
import 'package:high_table_app/Widgets/build_card.dart';

class TabCleaners extends StatelessWidget {
  const TabCleaners({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildCard(
            context: context, 
            backgroundImage: 'assets/thecleaners.png',
            title: 'The Cleaners',
            subtitle1: 'Down for any occasion.',
            countryAlpha2Code: 'US',
            countryName: 'United States',
            description: 'adsadas',
          ),
          buildCard(
            context: context, 
            backgroundImage: 'assets/villa.png',
            title: 'Villagol',
            subtitle1: 'The best cleaner of his house.',
            countryAlpha2Code: 'CL',
            countryName: 'Chile',
            description: 'adsadas',
          ),
        ],
      ),
    );
  }
}
