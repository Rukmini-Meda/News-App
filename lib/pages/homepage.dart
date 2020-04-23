import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:project/pages/post.dart';
import 'package:project/widgets/newscard.dart';
import 'package:project/widgets/drawer_widget.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> posts=List();
  bool isLoaded=false;
  String url = "http://newsapi.org/v2/top-headlines?apiKey=35ee3e4fa34a403487285ffb2579b2d1&country=in";

  Future<void> _fetchData() async{
    try{
      final response=await http.get(url);
      if(response.statusCode==200){
        final data=json.decode(response.body);
        posts=(data["articles"] as List).map((post){
          return Post.fromJSON(post);
        }).toList();
      print(posts[0].title);
      setState(() {
        this.isLoaded = true;
      });
      }
    }catch(e){
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text("Update me"),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        child: this.isLoaded ? ListView.builder(
          itemCount: posts.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context,int index){
            return NewsCard(posts[index]);
          }
        ):Center(child: CircularProgressIndicator(),),
        onRefresh: _fetchData,
      ),
    );
  }
}