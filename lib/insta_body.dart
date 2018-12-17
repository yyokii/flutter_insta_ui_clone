import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_list.dart';

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // todo: flexible何？
          Flexible(child: InstaList())
        ],
      ),
    );
  }
}