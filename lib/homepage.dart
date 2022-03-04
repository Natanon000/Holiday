import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[600],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 0, 100),
              child: Row(
                children: [
                  Image.asset(
                    'assets/logoFullHoliday.png',
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ), //Logo
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    'GOOD MORNING !',
                    style: TextStyle(
                      fontFamily: 'Poppins-SemiBold',
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'What are you looking for',
                    style: TextStyle(
                      fontFamily: 'Poppins-Medium',
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
              //color: Colors.white,
              padding: EdgeInsets.fromLTRB(30, 50, 0, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    spreadRadius: 10,
                    blurRadius: 15,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'My Plan',
                    style: TextStyle(
                      fontFamily: 'Poppins-SemiBold',
                      color: Colors.black87,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ), //My Plan
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(30, 15, 0, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      height: 95,
                      width: 95,
                      //color: Colors.orange,
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.7),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.accessibility_new_rounded,
                            color: Colors.white,
                            size: 60,
                          ),
                          Text(
                            '12.10.20',
                            style: TextStyle(
                              fontFamily: 'Poppins-Medium',
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      height: 95,
                      width: 95,
                      //color: Colors.orange,
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.7),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.accessibility_new_rounded,
                            color: Colors.white,
                            size: 60,
                          ),
                          Text(
                            '12.9.20',
                            style: TextStyle(
                              fontFamily: 'Poppins-Medium',
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      height: 95,
                      width: 95,
                      //color: Colors.orange,
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.7),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.accessibility_new_rounded,
                            color: Colors.white,
                            size: 60,
                          ),
                          Text(
                            '12.8.20',
                            style: TextStyle(
                              fontFamily: 'Poppins-Medium',
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      height: 95,
                      width: 95,
                      //color: Colors.orange,
                      decoration: BoxDecoration(
                        //color: Colors.orange,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        border: Border.all(
                          color: Colors.orange.withOpacity(0.7),
                          width: 3.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '+',
                            style: TextStyle(
                                color: Colors.orange.withOpacity(0.7),
                                fontSize: 50),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ), //My Plan View
            Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Container(
                    color: Colors.grey.withOpacity(0.1),
                    padding: EdgeInsets.fromLTRB(30, 25, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Nearby',
                          style: TextStyle(
                            fontFamily: 'Poppins-SemiBold',
                            color: Colors.black87,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ), //My Plan
              ],
            ), //Nearby
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Colors.white,
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                  padding: const EdgeInsets.fromLTRB(30, 15, 0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        height: 95,
                        width: 95,
                        decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.7),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.hotel,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              'Hotel',
                              style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                color: Colors.white,
                                fontSize: 13.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        height: 95,
                        width: 95,
                        decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.7),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              'Attractions',
                              style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                color: Colors.white,
                                fontSize: 13.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        height: 95,
                        width: 95,
                        decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.7),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.restaurant,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              'Restaurant',
                              style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        height: 95,
                        width: 95,
                        decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.7),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.local_gas_station,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              'Gas Station',
                              style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                color: Colors.white,
                                fontSize: 13.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        height: 95,
                        width: 95,
                        decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.7),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.local_airport,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              'Airport',
                              style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                color: Colors.white,
                                fontSize: 13.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ), //Nearby View
            Column(
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.fromLTRB(30, 25, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Featured Plan',
                        style: TextStyle(
                          fontFamily: 'Poppins-SemiBold',
                          color: Colors.black87,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ), //My Plan
              ],
            ), //Featured Plan
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(30, 15, 0, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            //spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(5, 7),
                          ),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        //height: 250,
                        width: 270,
                        //color: Colors.grey.withOpacity(0.18),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.18),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/profileNone.png'),
                                        radius: 20,
                                        backgroundColor: Colors.transparent,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Person A',
                                              style: TextStyle(
                                                fontFamily: 'Poppins-SemiBold',
                                                color: Colors.black87,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '20 min ago',
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 11.0,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.orange,
                                  size: 30,
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/hotelImage/Hotel1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            //spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(5, 7),
                          ),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        //height: 250,
                        width: 270,
                        //color: Colors.grey.withOpacity(0.18),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.18),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/profileNone.png'),
                                        radius: 20,
                                        backgroundColor: Colors.transparent,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Person A',
                                              style: TextStyle(
                                                fontFamily: 'Poppins-SemiBold',
                                                color: Colors.black87,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '20 min ago',
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 11.0,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.orange,
                                  size: 30,
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/hotelImage/Hotel1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            //spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(5, 7),
                          ),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        //height: 250,
                        width: 270,
                        //color: Colors.grey.withOpacity(0.18),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.18),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/profileNone.png'),
                                        radius: 20,
                                        backgroundColor: Colors.transparent,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Person A',
                                              style: TextStyle(
                                                fontFamily: 'Poppins-SemiBold',
                                                color: Colors.black87,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '20 min ago',
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 11.0,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.orange,
                                  size: 30,
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/hotelImage/Hotel1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ), //Feature Plan View
          ],
        ),
      ),
    );
  }
}
