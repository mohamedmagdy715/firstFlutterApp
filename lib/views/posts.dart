import 'package:day2Lab/models/post.dart';
import 'package:day2Lab/services/postsService.dart';
import 'package:day2Lab/views/postDetails.dart';
import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  Posts({Key key}) : super(key: key);

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  List<Post> posts = new List();
  String url = "https://jsonplaceholder.typicode.com/posts";

  @override
  void initState() {
    super.initState();
    getMyPosts();
  }

  getMyPosts() async {
    posts = await PostsService().getPosts(url);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Center(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PostDetails(
                                    postBody: posts[index].body,
                                    postTitle: posts[index].title,
                                  )));
                    },
                    child: Text(
                      posts[index].title,
                      style: TextStyle(color: Colors.blue[600], fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
