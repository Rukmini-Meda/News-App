import 'package:flutter/material.dart';
import 'package:project/pages/post.dart';
class NewsCard extends StatefulWidget {
  final Post post;
  NewsCard(this.post);
  @override
  _NewsCardState createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Card(
      elevation: 3,
      child: InkWell(
        child: Column(children: <Widget>[
          Stack(
            children: <Widget>[
                Container(height: deviceHeight*0.3,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(image: NetworkImage(widget.post.image)),
              // fit: BoxFit.fill
            ),
          ),
          Container(
            height: deviceHeight*0.3,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: FractionalOffset.bottomCenter,
                end: FractionalOffset.center,
                colors:[
                  Colors.black.withOpacity(0.55),
                  Colors.black.withOpacity(0.15),
                ],
                stops: [
                  0.5,
                  0.5
                ]
              )
            )
          )
            ],
          ),
          
        ],)
      ),
    );
  }
}