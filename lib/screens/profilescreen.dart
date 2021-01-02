import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  child: Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        image: DecorationImage(
                            image: AssetImage('assets/anna.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                  child: Text(
                    'Anna  Harris',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(
                    'Accra, Ghana',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.grey,
                        fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                  child: Text(
                    'I take beautifull pictures with my Phone. Extraordinary Ones, People, Animals Whatever,',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '1306',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.blue,
                                fontSize: 18.0),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '876',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 18.0),
                          ),
                          Text(
                            'Following',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '90',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 18.0),
                          ),
                          Text(
                            'Saves',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  height: 250.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height: 300.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                image: AssetImage('assets/benard.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        height: 100.0,
                        width: 180.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                image: AssetImage('assets/bettie.jpg'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  height: 160.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height: 200.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage('assets/jenna.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(width: 15.0),
                      Container(
                        height: 100.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage('assets/kathie.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(width: 15.0),
                      Container(
                        height: 100.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage('assets/mona.jpg'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.blue.withOpacity(0.5)),
                      child: Center(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    // Container(
                    //   height: 40.0,
                    //   width: 200.0,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(30.0),
                    //     color: Colors.black.withOpacity(0.7),
                    //   ),
                    //   child: Center(
                    //       child: Text(
                    //     'FOLLOW',
                    //     style: TextStyle(
                    //         color: Colors.white,
                    //         fontFamily: 'Poppins',
                    //         fontSize: 15.0),
                    //   )),
                    // )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
