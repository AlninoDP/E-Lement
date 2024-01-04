import 'package:flutter/material.dart';

class ElemenItemConfig {
  final String elementId;
  final String title;
  final Color containerColor;
  final Color textColor;
  final String symbol;

  const ElemenItemConfig({
    required this.elementId,
    required this.title,
    required this.containerColor,
    required this.textColor,
    required this.symbol,
  });
}
