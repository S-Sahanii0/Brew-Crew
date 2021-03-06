import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = new AuthService();

  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign up to Brew Crew'),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                TextFormField(
                  onChanged: (val){
                    setState(() {
                      email = val;
                    });
                  },
                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  obscureText: true, //password
                  onChanged: (val){
                    setState(() => password = val);
                  },
                ),
                SizedBox(height: 20.9,),
                RaisedButton(
                    color: Colors.pink[400],
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: (){
                      print(email);
                      print(password);
                    }
                )
              ],
            ),
          )
      ),
    );
  }
}

