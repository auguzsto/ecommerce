import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return const NavigationDrawer(
      selectedIndex: null,
      children: [
        //Avatar
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            maxRadius: 66,
            child: Text(
              'M',
              style: TextStyle(fontSize: 32),
            ),
          ),
        ),

        SizedBox(height: 10),

        //Menu
        NavigationDrawerDestination(
          icon: Icon(Icons.person),
          label: Text("Minha conta"),
        ),
      ],
    );
  }
}
