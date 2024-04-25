import 'package:flutter/material.dart';
import 'package:high_table_app/tabs/services/tab_cleaners.dart';
import 'package:high_table_app/tabs/services/tab_doctor.dart';
import 'package:high_table_app/tabs/services/tab_sastre.dart';
import 'package:high_table_app/tabs/services/tab_sommelier.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Services', style: TextStyle(
              color: Colors.white,)),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromARGB(255, 78, 72, 13),
          bottom: TabBar(
            isScrollable: false,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(MdiIcons.pistol),
                text: 'Sommelier',
              ),
              Tab(
                icon: Icon(MdiIcons.doctor),
                text: 'Doctor',
              ),
              Tab(
                icon: Icon(MdiIcons.hanger),
                text: 'Tailor',
              ),
              Tab(
                icon: Icon(MdiIcons.broom),
                text: 'Cleaners',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [TabSommelier(), TabDoctor(), TabTailor(), TabCleaners()],
        ),
      ),
    );
  }
}