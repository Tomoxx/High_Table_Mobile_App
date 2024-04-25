import 'package:flutter/material.dart';
import 'package:high_table_app/Widgets/contract.dart';
import 'package:high_table_app/profile.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ActiveContractsPage extends StatelessWidget {
  const ActiveContractsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> contracts = [
      {
        'status': 'Active',
        'amount': 5000.0,
        'contractType': 'Open',
        'target': 'Labrvca',
        'backgroundImage': 'assets/high table logo.png',
      },
      {
        'status': 'Active',
        'amount': 7500.0,
        'contractType': 'Open',
        'target': 'Jenni',
        'backgroundImage': 'assets/high table logo.png',
      },
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Active Contracts',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
                icon: Icon(MdiIcons.homeAccount),
                onPressed: () {
                  MaterialPageRoute routeProfile =
                      MaterialPageRoute(builder: (context) {
                    return ProfilePage();
                  });
                  //ejecutar la ruta
                  Navigator.push(context, routeProfile);
                })
          ],
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
                Color.fromARGB(255, 110, 110, 110)
              ], // Example gradient colors
            ),
          ),
          child: ListView(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Create Contract widgets dynamically for each contract item
                      for (var contract in contracts)
                        Contract(
                          amount: contract['amount'],
                          contractType: contract['contractType'],
                          target: contract['target'],
                          backgroundImage: contract['backgroundImage'],
                        )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
