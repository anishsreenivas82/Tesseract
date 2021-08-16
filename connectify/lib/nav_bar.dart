import 'package:flutter/material.dart';
import 'package:connectify/my_feed.dart';

import 'new_feed.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30, //border color
                      child: Padding(
                        padding: const EdgeInsets.all(2.0), //border size
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage("assets/logo.png"),
                          backgroundColor: Color(0xff7beed9),
                        ),
                      )),
                  Text(
                    'Connectify',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'Satisfy'),
                  )
                ]),
            decoration: BoxDecoration(color: Color(0xff7beed9)),
          ),
          ListTile(
            title: Text('Your Feed'),
            leading: Icon(Icons.dashboard_outlined, color: Colors.black),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Feed()));
            },
          ),
          ListTile(
            title: Text('Collaborations'),
            leading: Icon(
              Icons.auto_awesome,
              color: Colors.black,
            ),
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => Collaborations()));
            },
          ),
          ListTile(
            title: Text("Create a new post"),
            leading: Icon(Icons.create, color: Colors.black),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CreateNew()));
            },
          ),
          // ListTile(
          //   title: Text("Men's Clothing"),
          //   leading: Icon(
          //     Icons.,
          //     color: Colors.black,
          //   ),
          //   onTap: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => MenClothes()));
          //   },
          // ),
          // ListTile(
          //   title: Text('Jewellery'),
          //   leading: Icon(Icons.auto_awesome_sharp, color: Colors.black),
          //   onTap: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => jewel()));
          //   },
          // ),
          // ListTile(
          //   title: Text('Electronics'),
          //   leading:
          //       Icon(Icons.devices_other_sharp, color: Colors.black),
          //   onTap: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => electronics()));
          //   },
          // ),
          // ListTile(
          //     title: Text('Logout'),
          //     leading: Icon(Icons.logout, color: Colors.black),
          //     onTap: () {
          //       FirebaseAuth.instance.signOut();
          //       //choice is the variable that is obtained from the sign_up page
          //       if (choice == 1) {
          //         final provider =
          //             Provider.of<GoogleSignInProvider>(context, listen: false);
          //         provider.Logout();
          //       }
          //       Navigator.push(
          //           context, MaterialPageRoute(builder: (context) => splash()));
          //     })
        ],
      ),
    );
  }
}
