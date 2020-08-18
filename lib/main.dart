import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
//import 'package:whatsa';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: screen1()));
}

class screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return app2();
  }
}

class app2 extends StatefulWidget {
  @override
  _app2State createState() => _app2State();
}

class _app2State extends State<app2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text("Contact me app"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/jonnybravo.jpg"),
                backgroundColor: Colors.yellow[100],
                radius: 55.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
            child: Text(
              "Name",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15.0, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 0, 0, 0),
            child: Text(
              "Gajula Karthik",
              style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.yellow[600],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
            child: Text(
              "Contact Number",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15.0, color: Colors.grey),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 0, 0, 0),
                child: Text(
                  "9702663376",
                  style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.yellow[600],
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              IconButton(
                  icon: Icon(
                    Icons.sms,
                    color: Colors.grey,
                    size: 28,
                  ),
                  onPressed: () {
                    String sm = "sms:9702663376";
                    launch(sm);
                  }),
              IconButton(
                  icon: Icon(
                    Icons.call,
                    color: Colors.grey,
                    size: 28,
                  ),
                  onPressed: () {
                    String callno = "tel:9702663376";
                    launch(callno);
                  }),
              Container(
                  width: 65.0,
                  height: 30.0,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: FlatButton(
                      onPressed: () async => await launch(
                          "https://wa.me/${919892264433}?text=Hello Karthik"),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/whatsapplogo.png'),
                      ))),
            ],
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
            child: Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.grey,
                  size: 28,
                ),
                SizedBox(width: 5),
                Text(
                  "karthikgajula7@gmail.com",
                  style: TextStyle(color: Colors.yellow[600], fontSize: 16),
                )
              ],
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
            child: Text(
              "Address",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15.0, color: Colors.grey),
            ),
          ),
          SizedBox(width: 5),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 0, 0, 0),
            child: Text(
              "104/B Wing Gandhar Tower Sayani \n Road  Prabhadevi Mumbai:400025",
              style: TextStyle(color: Colors.yellow[600], fontSize: 18),
            ),
          ),
          SizedBox(
            height: 55,
          ),
          Center(
            child: RaisedButton(
                color: Colors.grey[600],
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => screen2()));
                },
                child: Text(
                  "Click here to view documents",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}

class UrlLauncher {}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text('My Documents'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image(image: AssetImage('images/cardsimage.jpg')),
            SizedBox(
              height: 10,
            ),
            Image(
              image: AssetImage(
                'images/passport.jpg',
              ),
            ),
          ],
        )),
      )),
    );
  }
}
