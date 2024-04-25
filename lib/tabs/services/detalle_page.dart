import 'package:audioplayers/audioplayers.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';



class DetallePage extends StatelessWidget {
  final String backgroundImage;
  final String title;
  final String subtitle;
  final String description;
  final String countryAlpha2Code;
  final String countryName;

  const DetallePage({
    required this.backgroundImage,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.countryAlpha2Code,
    required this.countryName,
  });

  @override
  Widget build(BuildContext context) {
    
   

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 27, 6, 122),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Center(
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(backgroundImage),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(fontSize: 19),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        countryName,
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(width: 4),
                      CountryFlag.fromCountryCode(
                        countryAlpha2Code,
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: InkWell(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('sounds/phone.wav'));
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Image.asset('assets/call.gif'), 
                      );
                    },
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 27, 6, 122),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.call, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'Call',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
