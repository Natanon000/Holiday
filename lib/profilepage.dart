import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _formKey = GlobalKey<FormState>();
  final _NameController = TextEditingController();
  final _DateOfBirthController = TextEditingController();
  final _AddressController = TextEditingController();
  FocusNode myNameFocusNode = new FocusNode();
  FocusNode myDateOfBirthFocusNode = new FocusNode();
  FocusNode myAddressFocusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profileNone.png'),
                    radius: 80,
                    backgroundColor: Colors.transparent,
                  ),
                  Text(
                    'USER NAME',
                    style: TextStyle(
                      fontFamily: 'Poppins-SemiBold',
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  )
                ],
              ),
            ),
            Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.fromLTRB(30, 25, 30, 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Text(
                            'Name',
                            style: TextStyle(
                              fontFamily: 'Poppins-SemiBold',
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        )
                      ],
                    ), //Name
                    TextFormField(
                      focusNode: myNameFocusNode,
                      cursorColor: Colors.orange,
                      style: TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)),
                      ),
                      controller: _NameController,
                      validator: (val) {
                        if (val == null || val.length == 0) {
                          return 'Please add username';
                        }
                        return null;
                      },
                      onFieldSubmitted: (value) =>
                          {if (_formKey.currentState!.validate()) {}},
                    ), //NameForm
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                          child: Text(
                            'Date of Birth',
                            style: TextStyle(
                              fontFamily: 'Poppins-SemiBold',
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        )
                      ],
                    ), //DateofBirth
                    TextFormField(
                      focusNode: myDateOfBirthFocusNode,
                      cursorColor: Colors.orange,
                      style: TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)),
                      ),
                      controller: _DateOfBirthController,
                      validator: (val) {
                        if (val == null || val.length == 0) {
                          return 'Please add username';
                        }
                        return null;
                      },
                      onFieldSubmitted: (value) =>
                          {if (_formKey.currentState!.validate()) {}},
                    ), //DateofBirthForm
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                          child: Text(
                            'Gender',
                            style: TextStyle(
                              fontFamily: 'Poppins-SemiBold',
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        )
                      ],
                    ), //Gender
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black87,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                //color: Colors.orange,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: Colors.black87,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Text(
                                  'Male',
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Medium',
                                    color: Colors.black87,
                                    fontSize: 15.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black87,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                //color: Colors.orange,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: Colors.black87,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Text(
                                  'Female',
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Medium',
                                    color: Colors.black87,
                                    fontSize: 15.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black87,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                //color: Colors.orange,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: Colors.black87,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Text(
                                  'Other',
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Medium',
                                    color: Colors.black87,
                                    fontSize: 15.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ), //GenderForm
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                          child: Text(
                            'Address',
                            style: TextStyle(
                              fontFamily: 'Poppins-SemiBold',
                              color: Colors.black87,
                              fontSize: 20.0,
                            ),
                          ),
                        )
                      ],
                    ), //Address
                    TextFormField(
                      focusNode: myAddressFocusNode,
                      cursorColor: Colors.orange,
                      style: TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)),
                      ),
                      controller: _AddressController,
                      validator: (val) {
                        if (val == null || val.length == 0) {
                          return 'Please add username';
                        }
                        return null;
                      },
                      onFieldSubmitted: (value) =>
                          {if (_formKey.currentState!.validate()) {}},
                    ), //AddressForm
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
