import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Collab extends StatefulWidget {
  const Collab({ Key? key }) : super(key: key);

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

      body: SafeArea(
        child: StreamBuilder<QuerySnapshot>(
          stream: _collabs,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }

            return new ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                return Container(
                    child: Container(
                        height: height * 0.40,
                        padding: EdgeInsets.fromLTRB(width * 0.01,
                            height * 0.01, width * 0.01, height * 0.01),
                        child: Container(
                            child: new Card(
                                elevation: 20,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.1),
                                ),
                                child: InkWell(
                                    child: Padding(
                                        padding: EdgeInsets.all(width * 0.04),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.lightbulb,
                                                    color: Colors.amber,
                                                  ),
                                                  Text(
                                                    'Name:',
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(data['Name'].toString()),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.lightbulb,
                                                    color: Colors.amber,
                                                  ),
                                                  Text(
                                                    'Type:',
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(data['Type'].toString()),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.lightbulb,
                                                    color: Colors.amber,
                                                  ),
                                                  Text(
                                                    'Quantity:',
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(data['Quantity']
                                                      .toString()),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.lightbulb,
                                                    color: Colors.amber,
                                                  ),
                                                  Text(
                                                    'Is it a Baby Product? :',
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(data['Baby'].toString()),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(children: [
                                                Icon(
                                                  Icons.lightbulb,
                                                  color: Colors.amber,
                                                ),
                                                Center(
                                                  child: Text(
                                                    'Status:',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Text(data['Status'].toString()),
                                              ])
                                            ])))))));
              }).toList(),
            );
          },
        ),
      ),
 
      
    );
  }
}