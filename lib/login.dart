import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my2/signup.dart';
import 'package:my2/welcome.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            height: h * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/logo1.png"), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  "V-Track",
                  style: TextStyle(
                      color: Color(0xff363D51),
                      fontSize: 50,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold
                  )

                ),
                Text(
                  "Sign in to your account",
                  style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 20,
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
                  height: 20,
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
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text('Forgot Password',),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                width: 175,
                height: 50,
                child: FlatButton(
                    onPressed: () {
                      print("Button pressed");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>WelcomePage()));
                    },
                    child: Text("Sign In", style: TextStyle(fontSize: 25)),
                    color: Colors.blueAccent,
                    textColor: Colors.black,
                    shape: StadiumBorder(),
                  )),
                SizedBox(
                  height: 90,
                ),
               /* RichText(
                  text: TextSpan(
                    text: "Don\'t have an account? ",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 20
                    ),
                    children: [
                     /* TextSpan(
                        text: " Create",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),

                      )*/
                    ]
                  ),
                ),*/
                TextButton(
                    onPressed: () {
                      print("Button pressed");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>SignUpPage()));
                    },
                     child: Text("Create an Account",
                         style: TextStyle(
                             color: Colors.grey[500],
                             fontSize: 20))
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
