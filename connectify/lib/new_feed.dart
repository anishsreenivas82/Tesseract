import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectify/my_feed.dart';
import 'package:connectify/nav_bar.dart';
import 'package:connectify/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final title = TextEditingController();
final body = TextEditingController();

class CreateNew extends StatefulWidget {
  const CreateNew({Key? key}) : super(key: key);

  @override
  _CreateNewState createState() => _CreateNewState();
}

class _CreateNewState extends State<CreateNew> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(height * 0.26),
            child: AppBar(
                backgroundColor: Color(0xfff7f4b4),
                centerTitle: true,
                flexibleSpace: Container(
                    height: height * 0.26,
                    width: width,
                    color: Color(0xfff7f4b4),
                    child: Center(
                        child: Column(children: [
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
                        "Create a post",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontFamily: "Almendra",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]))))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.05, height * 0.01, width * 0.05, height * 0.05),
                  child: Text("Create a new post for everyone to see",
                      style: TextStyle(fontFamily: 'Almendra', fontSize: 20)),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    width * 0.05, height * 0.01, width * 0.05, height * 0.05),
                child: TextField(
                  controller: title,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Title'),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    width * 0.05, height * 0.01, width * 0.05, 0),
                child: TextField(
                  controller: body,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Body of Post'),
                ),
              ),
              SizedBox(height: height * 0.002),
              Center(
                child: Container(
                  width: width * 0.31,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      FirebaseFirestore.instance.collection('Feed').add({
                        'Name': user,
                        'Title': title.toString(),
                        'Body': body.toString()
                      });
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (context, _, a) => Feed(),
                              transitionDuration: Duration(milliseconds: 500)));
                    },
                    icon: Icon(
                      Icons.next_plan,
                      color: Color(0xffd4fff7),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff171f28),
                    ),
                    label: Text(
                      "Continue",
                      style: TextStyle(
                        fontFamily: 'Almendra',
                        color: Color(0xffd4fff7),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              )
            ],
          ),
        ));
  }
}
