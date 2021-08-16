import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectify/nav_bar.dart';
import 'package:connectify/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
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
                            "https://images.unsplash.com/photo-1508921340878-ba53e1f016ec?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
            ),
          ];
        },
        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('Feed').snapshots(),
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
                                  child: ElevatedButton.icon(
                                    onPressed: () {
                                      FirebaseFirestore.instance
                                          .collection('Users')
                                          .doc(user)
                                          .collection('collab')
                                          .add({
                                        'Name': data['Name'],
                                        'Title': data['Title'],
                                        'Body': data['Body']
                                      });
                                    },
                                    icon: Icon(Icons.auto_awesome),
                                    label: Text('Collaborate',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Almendra',
                                          fontWeight: FontWeight.w100,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(width * 0.002),
                                  child: ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.add),
                                    label: Text('Up for \nit!',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Almendra',
                                          fontWeight: FontWeight.w100,
                                        )),
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
