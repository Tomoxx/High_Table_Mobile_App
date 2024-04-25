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
            countryName: ' United States',
            description: """The Cleaners, silent and efficient, are the unseen hands of the High Table. Trained in the art of erasure and elimination, they are the ones tasked with cleaning up the messes left behind by the underworld's elite. With surgical precision, The Cleaners sweep through crime scenes, removing any evidence that could lead back to their employers. Their work is meticulous and thorough, leaving no trace of their presence behind. The Cleaners operate in the shadows, their identities shrouded in mystery, but their reputation for getting the job done is unmatched. hether it's disposing of bodies, The Cleaners are the High Table's most trusted operatives, ensuring that their secrets remain hidden and their power unquestioned.""",
          ),
          buildCard(
            context: context,
            backgroundImage: 'assets/img/villa.png',
            title: 'Villagol',
            subtitle1: 'The best cleaner of his house.',
            countryAlpha2Code: 'CL',
            countryName: ' Chile',
            description: """Villagol, a young computer science student, realized his talent for cleaning extended to digital spaces, offering services to the High Table. With a knack for keeping things tidy and organized, Villagol discovered his ability to cover digital tracks while studying cybersecurity. Recognizing the demand for discrete digital cleaning, he began offering his skills to the High Table, quickly becoming their go-to guy for erasing incriminating evidence and securing sensitive data. Now, Villagol operates as a digital cleaner for the High Table, navigating the virtual realm with the same precision as he does with a mop and broom.""",
          ),
        ],
      ),
    );
  }
}
