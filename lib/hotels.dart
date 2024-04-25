import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:high_table_app/Widgets/bottom_nav_bar.dart';
import 'package:high_table_app/tabs/hotels/tab_newyork.dart';
import 'package:high_table_app/tabs/hotels/tab_rome.dart';
import 'package:high_table_app/tabs/hotels/tab_casablanca.dart';
import 'package:high_table_app/tabs/hotels/tab_osaka.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Hotels',
                style: TextStyle(
                  color: Colors.white,
                )),
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Color.fromARGB(255, 78, 72, 13),
            bottom: TabBar(
              isScrollable: false,
              labelPadding: EdgeInsets.all(0),
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
          bottomNavigationBar: BottomNavBar()),
    );
  }
}
