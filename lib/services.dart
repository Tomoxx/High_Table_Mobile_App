import 'package:flutter/material.dart';
import 'package:high_table_app/Widgets/bottom_nav_bar.dart';
import 'package:high_table_app/tabs/services/tab_cleaners.dart';
import 'package:high_table_app/tabs/services/tab_doctor.dart';
import 'package:high_table_app/tabs/services/tab_sastre.dart';
import 'package:high_table_app/tabs/services/tab_sommelier.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Services extends StatelessWidget {
  const Services({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Services',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center, // Alinea el texto al centro
            ),
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
                  icon: Icon(MdiIcons.pistol),
                  child: Text(
                    'Sommelier',
                    textAlign: TextAlign.center, // Alinea el texto al centro
                  ),
                ),
                Tab(
                  icon: Icon(MdiIcons.doctor),
                  child: Text(
                    'Doctor',
                    textAlign: TextAlign.center, // Alinea el texto al centro
                  ),
                ),
                Tab(
                  icon: Icon(MdiIcons.hanger),
                  child: Text(
                    'Tailor',
                    textAlign: TextAlign.center, // Alinea el texto al centro
                  ),
                ),
                Tab(
                  icon: Icon(MdiIcons.broom),
                  child: Text(
                    'Cleaners',
                    textAlign: TextAlign.center, // Alinea el texto al centro
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [TabSommelier(), TabDoctor(), TabTailor(), TabCleaners()],
          ),
          bottomNavigationBar: BottomNavBar()),
    );
  }
}
