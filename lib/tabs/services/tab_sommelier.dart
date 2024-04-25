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
            backgroundImage: 'assets/img/wentru.jpg',
            title: 'Wentru',
            subtitle1: 'Expert in combat stimulant drugs.',
            countryAlpha2Code: 'cl',
            countryName: ' Chile',
            description: """Wentru grew up in the tough streets of Puente Alto, Chile, where he became an expert in combat stimulant drugs. He rose through the ranks of local gangs, gaining a reputation for his high-quality products. Now, Wentru lends his expertise to the High Table, supplying specialized combat stimulants for their operatives. Despite his past, he has found a new path, using his knowledge to serve a different kind of clientele.""",
          ),
          buildCard(
              context: context,
              backgroundImage: 'assets/img/thesommelier.png',
              title: 'The Sommelier',
              subtitle1: 'A fine experience.',
              countryAlpha2Code: 'it',
              countryName: 'Italy',
              description:
                  """The Sommelier, expert weaponsmith, operates behind a wine shop facade.  Born into a family of renowned gunsmiths in Vienna, Austria, he pairs weapons with situations like a master sommelier matching wines. After studying across Europe, he emerged as a firearms expert, opening a wine shop front accessible only to select clients. His process of weapon selection is akin to wine pairing, carefully tailored to each client's needs, style, and situation."""),
        ],
      ),
    );
  }
}
