import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [_drawerHeader(),
        ListTile(leading: Icon(Icons.star),title: Text("favorit"),onTap: () {
          
        },
        ),
         ListTile(leading: Icon(Icons.home),title: Text("beranda"),onTap: () {
          
        },
        ),
        Divider(),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader( 
      currentAccountPicture: ClipOval(
        child: Image(
          image: AssetImage('assets/images/orang1.jpg'),
          fit: BoxFit.cover,
          ),
      ),
      otherAccountsPictures: [
        ClipOval(
          child: Image(
          image: AssetImage('assets/images/orang2.jpg'),
          fit: BoxFit.cover,
          ),
        ),
        ClipOval(
          child: Image(
            image: AssetImage('assets/images/orang3.jpg'),
            fit: BoxFit.cover,
          ),
        )
      ],
      accountName: Text('Palcomtech'),
      accountEmail: Text('adminpalcomtech.ac.id'),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(''),
          fit: BoxFit.cover
        ),
      ),
    );
  }
}
