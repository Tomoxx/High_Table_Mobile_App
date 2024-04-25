import 'package:flutter/material.dart';

class TabCasablanca extends StatelessWidget {
  const TabCasablanca({super.key});

  @override
  Widget build(BuildContext context) {
    final String hotelImage =
        'https://static.wikia.nocookie.net/john-wick8561/images/a/ae/Casablanca_hotelJW3.png/revision/latest/scale-to-width-down/1000?cb=20230918075821';
    final String hotelDescription =
        "Situated amidst the bustling streets and cultural landmarks of Casablanca, the Continental stands as a symbol of sophistication and intrigue. Its majestic exterior, adorned with intricate Moorish architecture and lush greenery, beckons travelers from near and far to experience the height of luxury and hospitality. As you step through its ornate doors, you're greeted by an atmosphere of timeless elegance and refined opulence. The hotel's interior, with its richly appointed furnishings, intricate tilework, and soft ambient lighting, transports you to a world of indulgence and serenity.";
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 78, 72, 13),
              Color.fromARGB(255, 173, 49, 11)
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
