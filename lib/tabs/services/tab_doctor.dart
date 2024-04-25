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
            description: " Anibal was once a brilliant industrial engineer. But one day, he became entangled with the High Table, the organization that controls the underworld. Impressed by his skills, they recruited him. He rose to become a key strategist for the High Table, known as 'The Engineer'. But eventually, he felt trapped by violence and corruption. He decided to leave it all behind, returning to his another love, medicine, to find redemption. Despite his departure, Anibal remained a valued doctor for the organization, using his skills for more noble purposes, yet still bound to the High Table by ties that couldn't be easily severed.",
          ),
          buildCard(
            context: context,
            backgroundImage: 'assets/thedoctor.png',
            title: 'The Doctor',
            subtitle1: 'Directly from Japan.',
            countryAlpha2Code: 'us',
            countryName: ' United States',
            description: "\"The Doctor\" is an experienced surgeon who has left the world of hospitals to work in the shadows. With unparalleled skills and a solid ethical code, he offers medical services to those who can't or won't seek conventional care. Known simply as \"The Doctor,\" he is discreet and reliable, capable of treating everything from severe injuries to complicated illnesses. Though his past is a mystery, his dedication to saving lives is undeniable. If you need urgent help and can't go to a hospital, The Doctor is your best option.",
          ),
        ],
      ),
    );
  }
}