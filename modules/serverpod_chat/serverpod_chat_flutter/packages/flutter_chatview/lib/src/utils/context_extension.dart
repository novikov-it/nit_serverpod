import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension TextThemeExtenstion on BuildContext{
  TextTheme get text => Theme.of(this).textTheme;
}