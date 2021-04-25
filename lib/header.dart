import 'package:flutter/cupertino.dart';

class Header{
  final String key;
  final String value;

  Header(this.key, this.value);

  factory Header.from(
      {@required String key,
        @required String value}) {
    return new Header(key, value);
  }

  Map<String, dynamic> toJson() {
    return {
      "key": key,
      "value": value,
    };
  }

  static List<dynamic> toJsonFromList(List<Header> tracks) {
    return tracks.map((t) => t.toJson()).toList();
  }
}