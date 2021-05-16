import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: new BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/BG.jpg"),
                    fit: BoxFit.cover)),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      child: Image(
                        image: AssetImage("assets/images/logo.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Ready",
                                  style: new TextStyle(
                                    fontSize: 60.0,
                                    color: Colors.white,
                                  )),
                              Text("for a new Adventure?",
                                  style: new TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.white,
                                  )),
                            ])),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Name',
                            prefixIcon: Icon(
                              Icons.account_box_rounded,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text('SIGN UP',
                              style: new TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              )),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          onPressed: () {},
                        )),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Text("ALREADY HAVE AN ACCOUNT?",
                            style: new TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            )),
                        FlatButton(
                          textColor: Colors.teal[200],
                          child: Text(
                            'LOGIN',
                            style: TextStyle(fontSize: 15),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()));
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
                  ],
                ))));
  }
}
