import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'hotel.dart';

class Hotel extends StatelessWidget {
  final Hoteldb item;
  Hotel(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.orange,
                image: DecorationImage(
                  image: AssetImage(item.img),
                  fit: BoxFit.cover,
                ),
              ),
            ), //HotelPicture
            Container(
              padding: EdgeInsets.fromLTRB(30, 25, 30, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.hotelName,
                            style: TextStyle(
                              fontFamily: 'Poppins-Bold',
                              color: Colors.black87,
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            item.description,
                            style: TextStyle(
                              fontFamily: 'Poppins-SemiBold',
                              color: Colors.black87,
                              fontSize: 8.0,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 30,
                          ),
                        ],
                      ),
                    ],
                  ), //HotelName
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
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
                      //margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                      padding: EdgeInsets.all(20),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.orange,
                                  width: 1.5,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'HOTEL ROOM',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Bold',
                                        color: Colors.black87.withOpacity(0.8),
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Room Detail',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-SemiBold',
                                        color: Colors.black87.withOpacity(0.8),
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '500',
                                    style: TextStyle(
                                      fontFamily: 'Poppins-Bold',
                                      color: Colors.orange,
                                      fontSize: 40.0,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(3, 0, 0, 10),
                                    child: Text(
                                      ' THB/Day',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-SemiBold',
                                        color: Colors.black87.withOpacity(0.5),
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 60,
                                width: 110,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'BOOK !',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-SemiBold',
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 25, 0, 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
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
                      //margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                      padding: EdgeInsets.all(20),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.orange,
                                  width: 1.5,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'HOTEL ROOM',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Bold',
                                        color: Colors.black87.withOpacity(0.8),
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Room Detail',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-SemiBold',
                                        color: Colors.black87.withOpacity(0.8),
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '1,500',
                                    style: TextStyle(
                                      fontFamily: 'Poppins-Bold',
                                      color: Colors.orange,
                                      fontSize: 40.0,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(3, 0, 0, 10),
                                    child: Text(
                                      ' THB/Day',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-SemiBold',
                                        color: Colors.black87.withOpacity(0.5),
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 60,
                                width: 110,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'BOOK !',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-SemiBold',
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
