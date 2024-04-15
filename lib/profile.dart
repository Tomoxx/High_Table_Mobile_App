import 'package:flutter/material.dart';
import 'package:high_table_app/Widgets/contract.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String username = "John Wick";
    final String city = "New York";
    final int age = 45;
    final int killCount = 300;
    final String profileImageUrl = "https://www.zbrushcentral.com/uploads/default/original/4X/3/6/a/36a97fe21f127f0422a011b445eb82151f3c7617.jpeg";
    // Define a list of contract items
    final List<Map<String, dynamic>> contracts = [
      {
        'status': 'Active',
        'amount': 5000.0,
        'contractType': 'Open',
        'target': 'Zachir',
      },
      {
        'status': 'Active',
        'amount': 7500.0,
        'contractType': 'Assassination',
        'target': 'High Table Target 1',
      },
      {
        'status': 'Active',
        'amount': 10000.0,
        'contractType': 'Assassination',
        'target': 'High Table Target 2',
      },
      // Add more contract items as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 90,
                    backgroundImage: NetworkImage(profileImageUrl),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Username: $username',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'City: $city',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Age: $age',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Kill Count: $killCount',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                  // Add a Divider to separate user profile details from contract list
                  Divider(),
                  // Create Contract widgets dynamically for each contract item
                  for (var contract in contracts)
                    Contract(
                      status: contract['status'],
                      amount: contract['amount'],
                      contractType: contract['contractType'],
                      target: contract['target'],
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
