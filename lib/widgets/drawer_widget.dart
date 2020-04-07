import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/beach.jfif'),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 15.0,
                  bottom: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/profile.jfif')
                          )
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontFamily: 'Baloo',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                          height: 1.4
                        )
                      ),
                      Text(
                        "johndoe@gmail.com",
                        style: TextStyle(
                          fontFamily: 'Baloo',
                          height: 1,
                          fontSize: 14,
                          color: Colors.white,
                        )
                      )
                    ],
                  ),
                )
              ],
            ),
            
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(
              Icons.bookmark,
              color: Colors.blueAccent,
            ),
            title: Text(
              "Saved News",
              style: TextStyle(
                fontFamily: 'Baloo',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )
            ),
            ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(
              Icons.bookmark,
              color: Colors.blueAccent,
            ),
            title: Text(
              "Saved News",
              style: TextStyle(
                fontFamily: 'Baloo',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )
            ),
            ),
          
        ],
      ),
    );
  }
}