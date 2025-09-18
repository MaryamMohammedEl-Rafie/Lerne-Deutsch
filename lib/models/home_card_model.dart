import 'package:flutter/material.dart';
import 'package:lerne_deutsch/models/home_data_model.dart';

class HomeCardModel extends StatelessWidget {
  HomeCardModel({super.key, required this.homeCard, required this.onTap});
  final HomeDataModel homeCard;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: homeCard.homeCardColor,
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: 180,
        alignment: Alignment.centerLeft,
        child: Text(
          homeCard.homeTxt,
          style: TextStyle(
            color: homeCard.homeTxtColor,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
