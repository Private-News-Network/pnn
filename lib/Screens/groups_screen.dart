import 'package:flutter/material.dart';
import 'package:pnn/Constants/const.dart';

class GroupsScreen extends StatefulWidget {
  @override
  _GroupsScreenState createState() => _GroupsScreenState();
}

class _GroupsScreenState extends State<GroupsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(
                              20.0) //                 <--- border radius here
                          ),
                      color: Colors.grey[900],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "  Group Messages  ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(
                                20.0) //                 <--- border radius here
                            ),
                        color: Colors.grey[900],
                      ),
                      child: Icon(
                        Icons.create,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(
                          20.0) //                 <--- border radius here
                      ),
                  color: Colors.grey[900],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "  Search..  ",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            messages("School Buddies ", "Hi Buddies ! How are you"),
            messages("School Buddies ", 'Dude check this out'),
            messages("School Buddies ",
                "Hey i think we should get tacos today and not..."),
            messages("School Buddies ", "can you bring home a beer?"),
            messages("School Buddies ", "I got the new game if you wanna play"),
            messages("School Buddies ", "Attachment: 1 image"),
            messages("School Buddies ", "Attachment: 3 images"),
          ],
        ),
      ),
    );
  }

  Widget messages(String name, String message) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, GROUP_MESSAGE_SCREEN);
      },
      onLongPress: () {
        Navigator.pushNamed(context, GROUP_MESSAGE_SCREEN);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: CircleAvatar(
                backgroundColor: Colors.grey[900],
                backgroundImage: AssetImage("assets/img1.png"),
                radius: 30,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 5,
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(
                          8.0) //                 <--- border radius here
                      ),
                  color: Colors.grey[900],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        message,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
