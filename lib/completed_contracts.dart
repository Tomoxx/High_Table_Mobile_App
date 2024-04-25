import 'package:flutter/material.dart';
import 'package:high_table_app/Widgets/bottom_nav_bar.dart';
import 'package:high_table_app/Widgets/contract.dart';

class CompletedContractsPage extends StatelessWidget {
  const CompletedContractsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> contracts = [
      {
        'status': 'Completed',
        'amount': 5000.0,
        'contractType': 'Open',
        'target': 'Renzo',
        'backgroundImage': 'assets/high table logo.png',
      },
      {
        'status': 'Completed',
        'amount': 7500.0,
        'contractType': 'Open',
        'target': 'Mendoza',
        'backgroundImage': 'assets/high table logo.png',
      },
      {
        'status': 'Completed',
        'amount': 10000.0,
        'contractType': 'Open',
        'target': 'Marico',
        'backgroundImage': 'assets/high table logo.png',
      },
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Completed Contracts',
            style: TextStyle(
              color: Colors.white,
            ),
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
        ),
        bottomNavigationBar: BottomNavBar());
  }
}
