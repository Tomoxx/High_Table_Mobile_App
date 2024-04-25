import 'package:flutter/material.dart';
import 'package:high_table_app/hotels.dart';
import 'package:high_table_app/profile.dart';
import 'package:high_table_app/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color.fromARGB(255, 0, 0, 0),
      child: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    MdiIcons.account,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    MaterialPageRoute routeProfile =
                        MaterialPageRoute(builder: (context) {
                      return ProfilePage();
                    });
                    Navigator.push(context, routeProfile);
                  }),
              IconButton(
                  icon: Icon(
                    MdiIcons.homeGroup,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    MaterialPageRoute routeHotels =
                        MaterialPageRoute(builder: (context) {
                      return Hotels();
                    });
                    Navigator.push(context, routeHotels);
                  }),
              IconButton(
                  icon: Icon(
                    MdiIcons.shopping,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    MaterialPageRoute routeServices =
                        MaterialPageRoute(builder: (context) {
                      return Services();
                    });
                    Navigator.push(context, routeServices);
                  })
            ]),
      ),
    );
  }
}
