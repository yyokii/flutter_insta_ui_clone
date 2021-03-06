import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0 
        ? new SizedBox(
          child: new InstaStories(),
          height: deviceSize.height * 0.17,
        )
        : Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // 1sr row
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                        ),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      new Text(
                        "imthpk",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  new IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: null,
                  )
                ],
              ),
            ),
            // 2nd row
            Flexible(
              fit: FlexFit.loose,
              child: new Image.network(
                "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                fit: BoxFit.cover,
              ),
            ),
            // 3rd row
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Icon(
                        FontAwesomeIcons.heart,
                      ),
                      new SizedBox(
                        width: 16.0,
                      ),
                      new Icon(
                        FontAwesomeIcons.comment,
                      ),
                      new SizedBox(
                        width: 16.0,
                      ),
                      new Icon(FontAwesomeIcons.paperPlane),
                    ],
                  ),
                  new Icon(FontAwesomeIcons.bookmark)
                ],
              ),
            ),
            // 4th row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Liked by pawankumar, pk and 528,331 others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            // 5th row
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                    ),
                  ),
                  new SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        hintText: "Add a comment...",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // 6th row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child:
                  Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
            )
          ],

        ),
    );
  }
}