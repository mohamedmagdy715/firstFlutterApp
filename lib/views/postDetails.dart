import 'package:flutter/material.dart';

class PostDetails extends StatefulWidget {
  final String postTitle, postBody;

  PostDetails({Key key, this.postTitle, this.postBody}) : super(key: key);

  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Post"),
      ),
      body: Column(
        children: [
          Card(
              child: Text(
            widget.postTitle,
            style: TextStyle(color: Colors.blue[600], fontSize: 25),
            textAlign: TextAlign.center,
          )),
          Card(
              child: Text(
            widget.postBody,
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          )),
          Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.thumb_up,
                    size: 35,
                  ),
                  Text(
                    " Like",
                    style: TextStyle(color: Colors.blue[600], fontSize: 30),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(
                    Icons.comment,
                    size: 35,
                  ),
                  Text(
                    " Comment",
                    style: TextStyle(color: Colors.blue[600], fontSize: 30),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
