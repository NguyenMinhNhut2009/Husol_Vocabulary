import 'package:flutter/material.dart';

const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);

const kDefaultPaddin = 20.0;

const hostUrl = 'https://vocabulary-service.husol.xyz';

String formatImageUrl(String url) {
  if (url.contains("http")) {
    return url;
  }
  return hostUrl + url;
}
