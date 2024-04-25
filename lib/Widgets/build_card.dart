import 'package:flutter/material.dart';
import 'package:country_flags/country_flags.dart';
import 'package:high_table_app/tabs/services/detail_page.dart';

Widget buildCard({
  required BuildContext context,
  required String backgroundImage,
  required String title,
  required String subtitle1,
  required String countryAlpha2Code,
  required String countryName,
  required String description,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailPage(
            backgroundImage: backgroundImage,
            title: title,
            subtitle: subtitle1,
            description: description,
            countryAlpha2Code: countryAlpha2Code,
            countryName: countryName,
          ),
        ),
      );
    },
    child: Card(
      elevation: 4,
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    subtitle1,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      CountryFlag.fromCountryCode(
                        countryAlpha2Code,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 4),
                      Text(
                        countryName,
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              child: Image.asset(
                backgroundImage,
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
