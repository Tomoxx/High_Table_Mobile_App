import 'package:flutter/material.dart';

class TabRome extends StatelessWidget {
  const TabRome({super.key});

  @override
  Widget build(BuildContext context) {
    final String hotelImage =
        'https://static.wikia.nocookie.net/john-wick8561/images/7/70/1_UqAxxEZwUY4Nr1wj1sgmuA.jpeg/revision/latest/scale-to-width-down/1000?cb=20190702200425';
    final String hotelDescription =
        "Nestled amidst the ancient streets and timeless landmarks of the Eternal City, the Continental Rome stands as a beacon of sophistication and intrigue. Its grand facade, adorned with classical architectural details, hints at the opulent sanctuary that lies within. As you step through its majestic doors, you're enveloped in an ambiance of exclusivity and refinement. The hotel's interior, tastefully decorated with timeless furnishings and soft lighting, invites you to unwind and indulge in the comforts of luxury.";
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 78, 72, 13),
              Color.fromARGB(255, 7, 59, 11)
            ], // Example gradient colors
          ),
        ),
        child: Container(
            margin: EdgeInsets.all(10),
            child: Column(children: [
              Image(image: NetworkImage(hotelImage)),
              SizedBox(height: 10.0),
              Text(hotelDescription,
                  textAlign: TextAlign.center, // Align text to center
                  style: TextStyle(
                    fontSize: 15, // Adjust font size
                    color: Colors.white, // Change text color
                  ))
            ])),
      ),
    );
  }
}
