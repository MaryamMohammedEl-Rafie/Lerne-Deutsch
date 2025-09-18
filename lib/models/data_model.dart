import 'package:flutter/material.dart';

class DataModel {
  final Color cardColor;
  final Color cardTxtColor;
  final String? image;
  final String deTxt;
  final String? enTxt;
  final String audio;
  const DataModel({
    required this.cardColor,
    required this.cardTxtColor,
    this.image,
    required this.deTxt,
    this.enTxt,
    required this.audio,
  });
}
