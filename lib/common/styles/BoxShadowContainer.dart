import 'package:flutter/material.dart';

List<BoxShadow> BoxShadowContainer() {
  return [
    BoxShadow(
        color: Colors.black.withOpacity(0.3),
        offset: const Offset(0, 3),
        blurRadius: 6.0)
  ];
}
