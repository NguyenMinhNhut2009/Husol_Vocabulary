import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vocabulary/constants.dart';

class Topic extends StatefulWidget {
  const Topic({Key? key}) : super(key: key);

  @override
  State<Topic> createState() => _TopicState();
}

class _TopicState extends State<Topic> {
   late List<String> topic = ["My topic", "Share topic"], late;
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
          child: SizedBox(
            height: 25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topic.length,
              itemBuilder: (context, index) => buildCategory(index),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          a = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              topic[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: a == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
              height: 2,
              width: 30,
              color: a == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
