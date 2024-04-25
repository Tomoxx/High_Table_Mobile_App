import 'package:flutter/material.dart';
import 'package:high_table_app/Widgets/bottom_nav_bar.dart';
import 'package:high_table_app/Widgets/contract.dart';

class ActiveContractsPage extends StatelessWidget {
  const ActiveContractsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> contracts = [
      {
        'status': 'Active',
        'amount': 1000000.0,
        'contractType': 'Open',
        'target': 'Labrvca',
        'backgroundImage': 'assets/img/labrvca.jpg',
      },
      {
        'status': 'Active',
        'amount': 100000.0,
        'contractType': 'Closed',
        'target': 'Jenni',
        'backgroundImage': 'assets/img/jenni.jpg',
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
              ],
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
