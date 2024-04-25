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
            backgroundImage: 'assets/img/thetailor.png',
            title: 'The Tailor',
            subtitle1: 'Dress for any ocasion.',
            countryAlpha2Code: 'it',
            countryName: ' Italy',
            description: """The Tailor, a master of threads and needles, is a coveted artisan of the High Table. With decades of experience in the fashion industry, The Tailor transitioned into the clandestine world of the High Table, where precision in attire is as critical as in combat. Renowned for exquisite craftsmanship and an eye for detail, The Tailor creates custom suits and garments that blend seamlessly into any setting, whether it be a lavish gala or a covert operation. Each stitch is meticulously placed to enhance both style and function, ensuring that the wearer exudes power and sophistication. In the shadows of the underworld, The Tailor's creations are not just clothing, but symbols of status and authority, reflecting the wearer's position within the hierarchy of the criminal elite.""",
          ),
          buildCard(
            context: context,
            backgroundImage: 'assets/img/charli.png',
            title: 'Charli XCX',
            subtitle1: 'OMG CHARLI !!!!',
            countryAlpha2Code: 'gb',
            countryName: 'United Kingdom',
            description:
                """After a grand career as a singer, Charli XCX now serves as a tailor for the High Table. Renowned for her creativity and attention to detail, Charli transitioned seamlessly from the stage to the world of haute couture. As a tailor, she crafts bespoke garments for the elite of the criminal underworld, ensuring they look as sharp as their knives. Charli's ability to blend style with functionality has made her an invaluable asset to the High Table, where every stitch serves a purpose in the intricate dance of power and influence.""",
            countryName: ' United Kingdom',
            description: """After a grand career as a singer, Charli XCX now serves as a tailor for the High Table. Renowned for her creativity and attention to detail, Charli transitioned seamlessly from the stage to the world of haute couture. As a tailor, she crafts bespoke garments for the elite of the criminal underworld, ensuring they look as sharp as their knives. Charli's ability to blend style with functionality has made her an invaluable asset to the High Table, where every stitch serves a purpose in the intricate dance of power and influence.""",
          ),
        ],
      ),
    );
  }
}
