import 'package:flutter/material.dart';
import 'package:high_table_app/Widgets/bottom_nav_bar.dart';
import 'package:high_table_app/active_Contracts.dart';
import 'package:high_table_app/completed_contracts.dart';
import 'package:high_table_app/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String username = "Clandi";
    final String city = "Puerto Montt";
    final int age = 28;
    final int killCount = 100;
    final String profileImage = "assets/img/clandi.jpg";

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                MaterialPageRoute routeLogin =
                    MaterialPageRoute(builder: (context) {
                  return LoginPage();
                });

                Navigator.push(context, routeLogin);
              }),
          title: Text(
            'Profile',
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
                      CircleAvatar(
                        radius: 90,
                        backgroundImage: AssetImage(profileImage),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Username: $username',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'City: $city',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Age: $age',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Kill Count: $killCount',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Divider(),
                      ElevatedButton(
                        onPressed: () {
                          print('Navegar a la otra página');
                          MaterialPageRoute routeActiveContracts =
                              MaterialPageRoute(builder: (context) {
                            return ActiveContractsPage();
                          });

                          Navigator.push(context, routeActiveContracts);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Text(
                          'Active Contracts',
                          style: TextStyle(
                            fontFamily: 'Inder',
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('Navegar a la otra página');
                          MaterialPageRoute routeCompletedContracts =
                              MaterialPageRoute(builder: (context) {
                            return CompletedContractsPage();
                          });

                          Navigator.push(context, routeCompletedContracts);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Text(
                          'Completed Contracts',
                          style: TextStyle(
                            fontFamily: 'Inder',
                          ),
                        ),
                      ),
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
