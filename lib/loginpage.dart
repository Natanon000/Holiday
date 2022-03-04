import 'package:flutter/material.dart';

import 'launcher.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  FocusNode myUserFocusNode = new FocusNode();
  FocusNode myPasswordFocusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[600],
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 50),
                  child: Image.asset(
                    'assets/holidaylogo.png',
                    height: 150,
                    width: 150,
                  ),
                ), //Logo
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
                  child: TextFormField(
                    focusNode: myUserFocusNode,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                          color: myUserFocusNode.hasFocus
                              ? Colors.white
                              : Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                    controller: _userNameController,
                    validator: (val) {
                      if (val == null || val.length == 0) {
                        return 'Please add username';
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) =>
                        {if (_formKey.currentState!.validate()) {}},
                  ),
                ), //Username
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
                  child: TextFormField(
                    focusNode: myPasswordFocusNode,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          color: myPasswordFocusNode.hasFocus
                              ? Colors.white
                              : Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                    controller: _passwordController,
                    validator: (val) {
                      if (val == null || val.length == 0) {
                        return 'Please add password';
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) =>
                        {if (_formKey.currentState!.validate()) {}},
                  ),
                ), //Password
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Remember me',
                            style: TextStyle(
                              fontFamily: 'Poppins-Light',
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Forget Password',
                        style: TextStyle(
                          fontFamily: 'Poppins-Light',
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      )
                    ],
                  ),
                ), //remember me &forget
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('Login');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Launcher()));
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(30, 25, 30, 15),
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        //width: 350,
                        //width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1.0, color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        child: Center(
                            child: Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Poppins-Regular',
                            color: Colors.orange[600],
                            fontSize: 20.0,
                          ),
                        )),
                      ),
                    ),
                  ],
                ), //login
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      //width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0),
                          border: Border.all(width: 1.0, color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Center(
                          child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      )),
                    ),
                  ],
                ), //sign up
              ],
            ),
          ),
        ),
      ),
    );
  }
}
