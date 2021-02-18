import 'package:day2Lab/photo.dart';
import 'package:flutter/material.dart';

class IntroFlutter extends StatefulWidget {
  final String appBarTitle;

  IntroFlutter({Key key, this.appBarTitle}) : super(key: key);

  @override
  _IntroFlutterState createState() => _IntroFlutterState();
}

class _IntroFlutterState extends State<IntroFlutter> {
  //double _opa = 0.0;

  void _toggleOpacity() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyPhoto()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarTitle),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 400,
          child: Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Intoducing Flutter",
                    style: TextStyle(color: Colors.purple, fontSize: 30),
                  ),
                ),
                // Expanded(
                //     child: ListView.builder(
                //padding: const EdgeInsets.all(16.0),
                // itemCount: 1,
                // scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                // itemBuilder:
                //     (BuildContext context, int index) {
                //   return GestureDetector(
                //     onTap: () {
                //       print("done");
                //     }, // handle your image tap here
                //     child: Image(
                //         image: NetworkImage(
                //             "https://picsum.photos/80/200")),
                //   );
                // })),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: _toggleOpacity, // handle your image tap here
                      child: Image(
                          image: NetworkImage("https://picsum.photos/80/200")),
                    ),
                    GestureDetector(
                      onTap: _toggleOpacity, // handle your image tap here
                      child: Image(
                          image: NetworkImage("https://picsum.photos/80/200")),
                    ),
                    GestureDetector(
                      onTap: _toggleOpacity, // handle your image tap here
                      child: Image(
                          image: NetworkImage("https://picsum.photos/80/200")),
                    ),
                    GestureDetector(
                      onTap: _toggleOpacity, // handle your image tap here
                      child: Image(
                          image: NetworkImage("https://picsum.photos/80/200")),
                    ),
                    // Opacity(
                    //   opacity: 0.0,
                    //   child: Image(
                    //     image: NetworkImage(
                    //       "https://picsum.photos/370/200",
                    //     ),
                    //   ),
                    // ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 25, 30, 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        size: 35,
                      ),
                      Text(
                        " Like",
                        style: TextStyle(color: Colors.purple, fontSize: 30),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.comment,
                        size: 35,
                      ),
                      Text(
                        " Comment",
                        style: TextStyle(color: Colors.purple, fontSize: 30),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Colors.black,
                blurRadius: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
