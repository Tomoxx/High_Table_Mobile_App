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
            backgroundImage: 'assets/img/thecleaners.png',
            title: 'The Cleaners',
            subtitle1: 'Down for any occasion.',
            countryAlpha2Code: 'US',
            countryName: 'United States',
            description: 'adsadas',
          ),
          buildCard(
            context: context,
            backgroundImage: 'assets/img/villa.png',
            title: 'Villagol',
            subtitle1: 'The best cleaner of his house.',
            countryAlpha2Code: 'CL',
            countryName: 'Chile',
            description:
                """Villagol, a young computer science student, realized his talent for cleaning extended to digital spaces, offering services to the High Table. With a knack for keeping things tidy and organized, Villagol discovered his ability to cover digital tracks while studying cybersecurity. Recognizing the demand for discrete digital cleaning, he began offering his skills to the High Table, quickly becoming their go-to guy for erasing incriminating evidence and securing sensitive data. Now, Villagol operates as a digital cleaner for the High Table, navigating the virtual realm with the same precision as he does with a mop and broom.""",
          ),
        ],
      ),
    );
  }
}
