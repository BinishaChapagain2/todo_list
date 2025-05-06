import 'package:flutter/material.dart';
import 'package:todo_app/model/post.dart';

class Postpage extends StatefulWidget {
  Postpage({super.key});

  @override
  State<Postpage> createState() => _PostpageState();
}

class _PostpageState extends State<Postpage> {
  List<Post> posts = [
    Post(id: "1", title: "This is title 1", body: "This is body 1"),
    Post(id: "2", title: "This is title 2", body: "This is body 2"),
    Post(id: "3", title: "This is title 3", body: "This is body 3"),
    Post(id: "4", title: "This is title 4", body: "This is body 4"),
    Post(id: "5", title: "This is title 5", body: "This is body 5"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post Page")),
      body: posts.isEmpty ? Center(child: Text("No post "))
    );
  }
}
