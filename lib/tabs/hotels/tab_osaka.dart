import 'package:flutter/material.dart';

class TabOsaka extends StatelessWidget {
  const TabOsaka({super.key});

  @override
  Widget build(BuildContext context) {
    final String hotelImage =
        'https://static.wikia.nocookie.net/john-wick8561/images/f/fd/Osaka.png/revision/latest/scale-to-width-down/1000?cb=20230526005728';
    final String hotelDescription =
        "Nestled amidst the dynamic streets and cultural landmarks of Osaka, the Continental stands as a beacon of sophistication and luxury. Its sleek and contemporary exterior, rising gracefully against the city skyline, hints at the opulent sanctuary that lies within. As you enter through its sleek glass doors, you're enveloped in an ambiance of refined comfort and understated elegance. The hotel's interior, with its minimalist design and sleek furnishings, exudes a sense of modernity and tranquility, offering a serene retreat from the hustle and bustle of the city.";
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 78, 72, 13),
              Color.fromARGB(255, 133, 13, 13)
            ], // Example gradient colors
          ),
        ),
        child: Container(
            margin: EdgeInsets.all(5),
            child: Column(children: [
              Image(image: NetworkImage(hotelImage)),
              Text(hotelDescription,
                  textAlign: TextAlign.center, // Align text to center
                  style: TextStyle(
                    fontSize: 16, // Adjust font size
                    color: Colors.white, // Change text color
                  ))
            ])),
      ),
    );
  }
}
