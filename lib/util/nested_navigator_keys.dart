import 'package:flutter/cupertino.dart';

enum NestedNavigatorKeys {
  mainKey(Key('NestedKey'));

  final Key key;
  const NestedNavigatorKeys(this.key);
}