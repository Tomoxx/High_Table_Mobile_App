import 'package:flutter/material.dart';
import 'package:high_table_app/Widgets/buildcard.dart';

class TabCleaners extends StatelessWidget {
  const TabCleaners({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildCard(
            backgroundImage: 'assets/thecleaners.png',
            title: 'The Cleaners',
            subtitle1: 'Down for any ocasion.',
            countryAlpha2Code: 'us',
            countryName: 'United States',
          ),
          buildCard(
            backgroundImage: 'assets/villa.png',
            title: 'Villagol',
            subtitle1: 'The best cleaner of his house.',
            countryAlpha2Code: 'cl',
            countryName: 'Chile',
          ),
        ],
      ),
    );
  }
}