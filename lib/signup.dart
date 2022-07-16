import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.15,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/logo1.png"), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "V-Track",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                      width: 350,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.lightBlue,
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.lightBlue,
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          labelText: "Full Name",
                        ),
                      )
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                      width: 350,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.lightBlue,
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.lightBlue,
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          labelText: "Email Address",
                        ),
                      )
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                      width: 350,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.lightBlue,
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.lightBlue,
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          labelText: "Phone Number",
                        ),
                      )
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                      width: 350,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.lightBlue,
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.lightBlue,
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          labelText: "Password",
                        ),
                      )
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 175,
                      height: 50,
                      child: FlatButton(
                        onPressed: () {
                          print("Button pressed");
                        },
                        child: Text("Sign Up", style: TextStyle(fontSize: 25)),
                        color: Colors.blueAccent,
                        textColor: Colors.black,
                        shape: StadiumBorder(),
                      )),


                ],
            ),
          )
        ],
      ),
    ));
  }
}
