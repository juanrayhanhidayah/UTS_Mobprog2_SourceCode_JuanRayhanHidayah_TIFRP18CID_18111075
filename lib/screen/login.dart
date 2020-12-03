import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoodie_collection/screen/dashboard.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String user = "Juan12";
  String pass = "123456";
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Center(
            child: Center(
              child: Form(
                  key: formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(),
                      IconButton(
                        onPressed: () {},
                        iconSize: 100.0,
                        icon: Image.asset('assets/images/sweatshirt.png'),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text('Login',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 25.0,
                      ),
                      TextFormField(
                        controller: username,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Username"),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20.0, 0, 20),
                        child: TextFormField(
                          obscureText: true,
                          controller: password,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Password"),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          color: Colors.deepPurpleAccent,
                          onPressed: () {
                            if (username.text == user &&
                                password.text == pass) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dashboard(
                                            username: username.text,
                                          )));
                            } else {
                              AlertDialog alert = AlertDialog(
                                title: Icon(
                                  Icons.error,
                                  size: 50.0,
                                  color: Colors.red,
                                ),
                                content: Text("Wrong Username or Password"),
                                actions: [
                                  TextButton(
                                    child: Text('Ok'),
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                  ),
                                ],
                              );
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return alert;
                                  });
                            }
                          },
                          child: Text(
                            "Login",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
