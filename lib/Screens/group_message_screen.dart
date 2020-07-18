import 'package:flutter/material.dart';

class GroupMessageScreen extends StatefulWidget {
  @override
  _GroupMessageScreenState createState() => _GroupMessageScreenState();
}

class _GroupMessageScreenState extends State<GroupMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            children: <Widget>[
              SizedBox(
                width: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  'School Buddies',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Image.asset(
                'assets/img1.png',
                height: 50,
              ),
            ],
          ),
          backgroundColor: Colors.grey[900],
        ),
        backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height * 2,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Text(
                'Date', //the date the conversation happened
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 20.0, right: 10),
                    child: Image.asset(
                      'assets/img1.png',
                      height: 25,
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * .6),
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: Text(
                      'Hi',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * .6),
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                    ),
                    child: Text(
                      'What\'s up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.photo_camera,
                        color: Colors.grey,
                        size: 40,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.photo,
                        color: Colors.grey,
                        size: 40,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[700],
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                  20.0), //                 <--- border radius here
                            ),
                            color: Colors.black,
                          ),
                          child: Container(
                            height: 40.0,
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Text(
                                    "  PNN  ",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.grey[700]),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Icon(
                                    Icons.mic,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
