import 'package:flutter/material.dart';

class CardModel {
  final String cardHolder;
  final String cardNumber;
  final String cardBrand;
  final Color startColor;
  final Color endColor;

  CardModel({
    required this.cardHolder,
    required this.cardNumber,
    required this.cardBrand,
    required this.startColor,
    required this.endColor,
  });
}
