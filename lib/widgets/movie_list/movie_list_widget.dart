import 'package:flutter/material.dart';
import 'package:spider/spider.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemExtent: 163.0,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.red,
          );
        },
    );
  }
}
