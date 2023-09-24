import 'package:flutter/material.dart';

class DrawerCustomer extends StatelessWidget {
  const DrawerCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // shadowColor: Colors.black,
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture:
               CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpeg'),
              ),
              accountName: Text('Ananthu'), accountEmail: Text('ananthu@gmail.com')),
               Container(
                color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: Row(
                children:[
                  Icon(Icons.info),
                  SizedBox(width: 16.0),
                  Text('Additional Information'),
                ],
              ),
              
            ),
          ],
    
        ),
      );
  }
}