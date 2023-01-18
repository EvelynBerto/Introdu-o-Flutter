import 'package:flutter/cupertino.dart';
import 'package:introducao_flutter/singleton.dart';

extension SingletonBuildContext on BuildContext{
  int get id => Singleton.instance.id ?? 0;
}
