import 'package:audioplayers/audioplayers.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:high_table_app/Widgets/bottom_nav_bar.dart';

class DetailPage extends StatelessWidget {
  final String backgroundImage;
  final String title;
  final String subtitle;
  final String description;
  final String countryAlpha2Code;
  final String countryName;

  const DetailPage({
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
          backgroundColor: Color.fromARGB(255, 78, 72, 13),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 78, 72, 13),
                Color.fromARGB(255, 110, 110, 110),
              ],
            ),
          ),
          child: SingleChildScrollView(
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
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        description,
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          CountryFlag.fromCountryCode(
                            countryAlpha2Code,
                            height: 20,
                            width: 20,
                          ),
                          Text(
                            countryName,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(width: 4),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 78, 72, 13),
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
                SizedBox(height: 60),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar());
  }
}
