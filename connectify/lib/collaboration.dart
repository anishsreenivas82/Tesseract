import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectify/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'nav_bar.dart';

class Collab extends StatefulWidget {
  const Collab({Key? key}) : super(key: key);

  @override
  _CollabState createState() => _CollabState();
}

class _CollabState extends State<Collab> {
  final Stream<QuerySnapshot> _collabs = FirebaseFirestore.instance
      .collection('Shelter')
      .doc('uidShelter')
      .collection('previous requests')
      .snapshots();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFEFBE90),
      drawer: NavBar(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Color(0xfff7f4b4),
              pinned: true,
              snap: true,
              floating: true,
              expandedHeight: height * 0.4,
              actions: [
                IconButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ShoppingCart()));
                    },
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    )),
              ],
              flexibleSpace: new FlexibleSpaceBar(
                  title: Text(
                    "Your Feed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Satisfy',
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                  centerTitle: true,
                  background: Container(
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1600880292089-90a7e086ee0c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29sbGFib3JhdGlvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
            ),
          ];
        },
        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('Users')
                .doc(user)
                .collection('collab')
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text("Loading");
              }
              return ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data() as Map<String, dynamic>;
                  return Container(
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        width * 0.009, height * 0.01, width * 0.009, 0),
                    child: Card(
                      elevation: 20,
                      child: Container(
                        width: width * 0.85,
                        height: height * 0.62,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 30,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(data['Name'].toString(),
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontFamily: 'Almendra',
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(data['Title'].toString(),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Almendra',
                                        fontWeight: FontWeight.w300,
                                        fontStyle: FontStyle.italic)),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: height * 0.25,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(data['Body'].toString(),
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Almendra',
                                        fontWeight: FontWeight.w100,
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(width * 0.009),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite)),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(width * 0.009),
                                  child: Container(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text("Notification Sent!",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Almendra',
                                            fontWeight: FontWeight.w100,
                                          )),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ));
                }).toList(),
              );
            }),
      ),
    );
  }
}
