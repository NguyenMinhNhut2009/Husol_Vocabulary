import 'package:flutter/material.dart';
import 'package:vocabulary/constants.dart';
import 'package:vocabulary/modules/home/home_Modules.dart';
import 'package:vocabulary/modules/login/login_modules.dart';
import 'package:vocabulary/screen/splashScreen.dart';

Widget homeWidget(BuildContext context, Data _data) {
  return Container(
    margin: EdgeInsets.all(10),
    width: 180,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(color: Colors.grey, offset: Offset.zero, blurRadius: 10)
      ],
      border: Border.all(color: Colors.grey, width: 0.3),
    ),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SplashScreen()),
        );
      },
      child: Stack(
        children: [
          // _discountTag(_product),
          _dataInfo(_data),
        ],
      ),
    ),
  );
}

Widget _dataInfo(Data _data) {
  var b = _data.cover;
  var c = _data.title;
  return Container(
    child: Column(children: <Widget>[
      Expanded(
        flex: 1,
        child: FadeInImage(
          image: NetworkImage(formatImageUrl(b!)),
          placeholder: AssetImage("assets/image/im_topic.jpg"),
        ),
      ),
      Expanded(
        flex: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 0),
                child: Text(
                  c!,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    ]),
  );
}
