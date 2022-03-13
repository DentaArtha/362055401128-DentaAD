import 'package:covid19/maindrawer.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'COVID-19 VIRUS TRACKER',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),
      drawer: Drawer(
        child: maindrawer(),
      ),
      body: Container(
        child: Column(children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green[50]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CURRENT STATS  ^',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                'REPORTED',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'CASES',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset('assets/virus 2.png'),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '4.17.676',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Container(
                            height: 100,
                            width: 0,
                            decoration: BoxDecoration(border: Border.all(), color: Colors.black),
                          ),
                          Column(
                            children: [
                              Text(
                                'REPORTED',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'DEATHS',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset('assets/poison 2.png'),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '18.605',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green[50]),
                  child: Column(
                    children: [
                      Text('Corona Virus Measures To Take', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      SizedBox(
                        height: 10,
                      ),
                      Text('stay aware of the latest measures to'),
                      Text('prevent COVID-19 outbreak'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/Group.png',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Wear a facemask',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.blue[200]),
                                    child: Text('See more ->'),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('You should always wear a'),
                              Text('facemask when you are around'),
                              Text('other people')
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 18, left: 10, right: 10),
            height: 150,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue[100]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/Group 3.png'),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 80,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Italy',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' - 74.386 infected ceses reported',
                          ),
                          Text(
                            ' - 74.386 infected ceses reported',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/Group 14.png'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: Colors.green[200], borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/home-run 2.png'),
                Image.asset('assets/news 2.png'),
                Image.asset('assets/Group11.png'),
                Image.asset('assets/user (1) 2.png'),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
