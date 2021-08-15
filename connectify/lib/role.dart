import 'package:connectify/corp_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Role extends StatefulWidget {

  @override
  _RoleState createState() => _RoleState();
}

class _RoleState extends State<Role> {
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFEFBE90),
      appBar: PreferredSize(preferredSize: Size.fromHeight(height*0.26),
      child: AppBar(
        backgroundColor: Color(0xfff7f4b4),
          centerTitle: true,
          flexibleSpace: Container(
            height: height * 0.26,
            width: width,
            color: Color(0xfff7f4b4),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.09,
                  ),
                  Text(
                    "Connectify",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Satisfy',
                      color: Color(0xff171f28),
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    "Set up your profile",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: "Almendra",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ])
            )
            )
            )
            ),
            body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          'Choose your role',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: "Almendra",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.005),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Card(
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                                height: height * 0.26,
                                width: width * 0.4,
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    image: NetworkImage("https://images.unsplash.com/photo-1497366811353-6870744d04b2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fGNvcnBvcmF0ZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: height * 0.17),
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CorpProfile()));
                                      },
                                      icon: Icon(Icons.next_plan,
                                          color: Color(0xffd4fff7)),
                                      label: Text(
                                        "Corporate \nDonor",
                                        style: TextStyle(
                                          fontFamily: 'Almendra',
                                          color: Color(0xffd4fff7),
                                          fontSize: 15,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xff171f28),
                                      ),
                                    ),
                                  ],
                                ))),
                        SizedBox(
                          width: width * 0.072,
                        ),
                        Card(
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                                height: height * 0.26,
                                width: width * 0.4,
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    image: NetworkImage("https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: height * 0.17),
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => MenClothes()));
                                      },
                                      icon: Icon(Icons.next_plan,
                                          color: Color(0xffd4fff7)),
                                      label: Text(
                                        "Induvidual \nDonor",
                                        style: TextStyle(
                                          fontFamily: 'Almendra',
                                          color: Color(0xffd4fff7),
                                          fontSize: 15,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xff171f28),
                                      ),
                                    ),
                                  ],
                                )))
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.005),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Card(
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                                height: height * 0.26,
                                width: width * 0.4,
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    image: NetworkImage("https://images.unsplash.com/photo-1617450365226-9bf28c04e130?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmdvfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: height * 0.17),
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => jewel()));
                                      },
                                      icon: Icon(Icons.next_plan,
                                          color: Color(0xffd4fff7)),
                                      label: Text(
                                        "Not for Profit \nOrganisation",
                                        style: TextStyle(
                                          fontFamily: 'Almendra',
                                          color: Color(0xffd4fff7),
                                          fontSize: 15,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xff171f28),
                                      ),
                                    ),
                                  ],
                                ))),
                        SizedBox(
                          width: width * 0.072,
                        ),
                        Card(
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                                height: height * 0.26,
                                width: width * 0.4,
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    image: NetworkImage("https://images.unsplash.com/photo-1560252829-804f1aedf1be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: height * 0.17),
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => electronics()));
                                      },
                                      icon: Icon(Icons.next_plan,
                                          color: Color(0xffd4fff7)),
                                      label: Text(
                                        "Volunteer",
                                        style: TextStyle(
                                          fontFamily: 'Almendra',
                                          color: Color(0xffd4fff7),
                                          fontSize: 15,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xff171f28),
                                      ),
                                    ),
                                  ],
                                )))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
            );
  }
}