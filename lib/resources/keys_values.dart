import 'package:flutter/material.dart';

enum KeysEnum {
  splashPage,
  homePage,
}

extension KeysEnumValue on KeysEnum {
  static const _value = {
    KeysEnum.splashPage: "splashPage",
    KeysEnum.homePage: "homePage",
  };

  Key get key => Key(_value[this] ?? "");
}
