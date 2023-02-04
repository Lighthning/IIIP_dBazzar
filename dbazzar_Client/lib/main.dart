import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Client Interface',
      theme: ThemeData(
        primaryColor: Color(0xff480048),
        accentColor: Color(0xffFE9E9E),
      ),
      home: ClientInterface(),
    );
  }
}

class ClientInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xffD4281E), Color(0xfff89f9f)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'dBazzar Game Modules',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: double.infinity,
                height: 70.0,
                margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.red,
                ),
                child: MaterialButton(
                  child: Text(
                    'Spin the Wheel',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    // navigate to the spin the wheel game module
                  },
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                height: 70.0,
                margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.red,
                ),
                child: MaterialButton(
                  child: Text(
                    'Daily Rewards',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    // navigate to the daily reward collection game module
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
