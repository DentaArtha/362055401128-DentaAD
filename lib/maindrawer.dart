import 'dart:ui';

import 'package:flutter/material.dart';

class maindrawer extends StatelessWidget {
  const maindrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0, left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/image 2.png'),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          'Idris Alba',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Active Status',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                list(img: 'assets/hospital 1.png', title: 'Quarantine Centres'),
                list(img: 'assets/medicine 1.png', title: 'Medicines'),
                list(img: 'assets/Group 16.png', title: 'Symtoms'),
                list(img: 'assets/help 1.png', title: 'Volunteer'),
                list(img: 'assets/customer-service 1.png', title: 'Live Support'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 180,
        ),
        Container(
          margin: EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Setting',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  )),
              Container(
                height: 40,
                width: 0,
                decoration: BoxDecoration(border: Border.all(), color: Colors.black),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Log Out',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ))
            ],
          ),
        )
      ],
    );
  }
}

class list extends StatelessWidget {
  const list({Key? key, required this.img, required this.title}) : super(key: key);

  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 50,
      child: Row(
        children: [
          Image.asset(img),
          SizedBox(
            width: 20,
          ),
          TextButton(onPressed: () {}, child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)))
        ],
      ),
    );
  }
}
