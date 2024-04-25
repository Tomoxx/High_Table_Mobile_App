import 'package:flutter/material.dart';
import 'package:high_table_app/Widgets/build_card.dart';

class TabDoctor extends StatelessWidget {
  const TabDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildCard(
            context: context,
            backgroundImage: 'assets/anibal.png',
            title: 'Ani',
            subtitle1: 'Expert in everything.',
            countryAlpha2Code: 'cl',
            countryName: 'Chile',
            description: 'adsadas',
          ),
          buildCard(
            context: context,
            backgroundImage: 'assets/thedoctor.png',
            title: 'The Doctor',
            subtitle1: 'Directly from Japan.',
            countryAlpha2Code: 'us',
            countryName: 'United States',
            description: 'adsadas',
          ),
        ],
      ),
    );
  }
}