import 'package:flutter/material.dart';
import 'package:instagram_ui_redesign/models/post_model.dart';
import 'package:instagram_ui_redesign/screens/viewpostscreen.dart';
import 'package:ionicons/ionicons.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  Widget _buildPost(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 560.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            height: 50.0,
                            width: 50.0,
                            image: AssetImage(posts[index].authorImageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      posts[index].authorName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(posts[index].timeAgo),
                    trailing: IconButton(
                      icon: Icon(Icons.more_horiz),
                      color: Colors.black,
                      onPressed: () => print('More'),
                    ),
                  ),
                  InkWell(
                    onDoubleTap: () => print('Like post'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PostScreen(
                            post: posts[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: AssetImage(posts[index].imageUrl),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Ionicons.heart),
                                  iconSize: 25.0,
                                  color: Colors.black,
                                  onPressed: () => print('Like post'),
                                ),
                                Text(
                                  '250',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(width: 5.0),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.comment),
                                  iconSize: 25.0,
                                  color: Colors.black,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => PostScreen(
                                          post: posts[index],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Text(
                                  '10',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(Ionicons.bookmark),
                          iconSize: 25.0,
                          color: Colors.black,
                          onPressed: () => print('Save post'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfDFfFF),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      'Instagram',
                      style: TextStyle(
                        fontFamily: 'Billabong',
                        fontSize: 40.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Ionicons.add),
                      iconSize: 25.0,
                      color: Colors.black,
                      onPressed: () => print('Add post'),
                    ),
                    // SizedBox(width: 10.0),
                    Container(
                      width: 35.0,
                      child: IconButton(
                        icon: Icon(Ionicons.heart),
                        color: Colors.black,
                        iconSize: 25.0,
                        onPressed: () {
                          print('Likes');
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      width: 35.0,
                      child: IconButton(
                        icon: Icon(Icons.message_outlined),
                        color: Colors.black,
                        iconSize: 25.0,
                        onPressed: () => print('Direct Messages'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 125.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                // Column(
                //   children: <Widget>[
                //     Container(
                //         height: 70.0,
                //         width: 70.0,
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(35.0),
                //             color: Colors.black),
                //         child: IconButton(
                //           icon: Icon(Icons.add),
                //           color: Colors.white,
                //           onPressed: () {},
                //         )),
                //     SizedBox(height: 7.0),
                //     Text('Your story',
                //         style: TextStyle(
                //             fontFamily: 'Objectivity',
                //             fontSize: 14.0,
                //             fontWeight: FontWeight.w600))
                //   ],
                // ),
                SizedBox(width: 15.0),
                listItem('assets/images/user1.jpg', 'Josey', true),
                SizedBox(width: 25.0),
                listItem('assets/images/user2.jpg', 'Stephanie', true),
                SizedBox(width: 25.0),
                listItem('assets/images/user3.jpg', 'Chorey', true),
                SizedBox(width: 25.0),
                listItem('assets/images/user4.jpg', 'Luke', true),
                SizedBox(width: 25.0),
                listItem('assets/images/user0.jpg', 'Mizzy', false),
              ],
            ),
          ),
          _buildPost(0),
          _buildPost(1),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Ionicons.home,
                size: 25.0,
                color: Colors.black,
              ),
              // ignore: deprecated_member_use
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Ionicons.search,
                size: 25.0,
                color: Colors.black,
              ),
              // ignore: deprecated_member_use
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  Icons.movie_creation_outlined,
                  size: 30.0,
                  color: Colors.black,
                ),
              ),
              // ignore: deprecated_member_use
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop, size: 30.0, color: Colors.black),
              // ignore: deprecated_member_use
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(200.0),
                  ),
                  onPressed: () {
                    print('Profile Page');
                  },
                  child: Icon(
                    Ionicons.person_outline,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ),
              ),
              // ignore: deprecated_member_use
              title: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}

Widget listItem(String imgPath, String name, bool available) {
  return Column(
    children: <Widget>[
      Container(
        height: 70.0,
        width: 70.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35.0),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)),
      ),
      SizedBox(height: 7.0),
      Row(
        children: <Widget>[
          Text(name,
              style: TextStyle(
                  fontFamily: 'Objectivity',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600)),
        ],
      )
    ],
  );
}
