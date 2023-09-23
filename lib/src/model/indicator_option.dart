import 'dart:ui';

import 'package:flutter/material.dart';

class IndicatorOption {
  final Size size; // indicator 하나의 사이즈
  final double gap; // indicator 간의 간격
  final int counts; // indicator 개수
  final Color inActiveColor; // 비활성화된 indicator 색상값
  final Color activeColor; // 활성화된 indicator 색상값
  List<Points> points = []; // indicator의 위치값
  IndicatorOption({
    required this.size,
    this.gap = 10,
    this.counts = 4,
    this.inActiveColor = const Color.fromARGB(150, 79, 79, 79),
    this.activeColor = const Color.fromARGB(255, 240, 222, 132),
  }) {
    makeStartingPoints();
  }

  makeStartingPoints() {
    points.clear();
    for (int i = 0; i < counts; i++) {
      var startPoint = size.width * i + gap * i;
      points.add(Points(startPoint, startPoint + size.width));
    }
  }
}

class Points {
  final x1;
  final x2;
  Points(this.x1, this.x2);
}
