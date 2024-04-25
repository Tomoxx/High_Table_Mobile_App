import 'package:flutter/material.dart';

class TabNewYork extends StatelessWidget {
  const TabNewYork({super.key});

  @override
  Widget build(BuildContext context) {
    final String hotelImage =
        "https://static.wikia.nocookie.net/john-wick8561/images/c/c9/Continental_Hotel_John_Wick_001.jpg/revision/latest/scale-to-width-down/1000?cb=20161128171130";
    final String hotelDescription =
        "Nestled among New York's landmarks, the Continental exudes an air of sophistication that beckons even the most discerning traveler. Its grand facade hints at the opulent sanctuary that lies within, offering a haven for those who walk the shadows. Stepping through its ornate doors, you're enveloped in an atmosphere of exclusivity and discretion. The hotel's interior, adorned with elegant decor and subdued lighting, whispers of secrets shared among its patrons.";
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 78, 72, 13),
              Color.fromARGB(255, 28, 13, 114)
            ],
          ),
        ),
        child: Container(
            margin: EdgeInsets.all(10),
            child: Column(children: [
              Image(image: NetworkImage(hotelImage)),
              SizedBox(height: 10.0),
              Text(hotelDescription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ))
            ])),
      ),
    );
  }
}
