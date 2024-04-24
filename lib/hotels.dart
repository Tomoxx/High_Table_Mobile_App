import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:high_table_app/tabs/hotels/tabNewYork.dart';
import 'package:high_table_app/tabs/hotels/tabRome.dart';
import 'package:high_table_app/tabs/hotels/tabCasablanca.dart';
import 'package:high_table_app/tabs/hotels/tabOsaka.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hotels'),
          backgroundColor: Color.fromARGB(255, 27, 6, 122),
          bottom: TabBar(
            isScrollable: false,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: CountryFlag.fromCountryCode(
                  'US',
                  height: 25,
                  width: 25,
                ),
                text: 'New York',
              ),
              Tab(
                icon: CountryFlag.fromCountryCode(
                  'IT',
                  height: 25,
                  width: 25,
                ),
                text: 'Rome',
              ),
              Tab(
                icon: CountryFlag.fromCountryCode(
                  'JP',
                  height: 25,
                  width: 25,
                ),
                text: 'Osaka',
              ),
              Tab(
                icon: CountryFlag.fromCountryCode(
                  'MA',
                  height: 25,
                  width: 25,
                ),
                text: 'Casablanca',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [TabNewYork(), TabRome(), TabOsaka(), TabCasablanca()],
        ),
      ),
    );
  }
}
