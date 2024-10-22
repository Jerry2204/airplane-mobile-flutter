import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final bool isSelected;
  final IconData iconName;

  const CustomBottomNavigationItem({
    super.key,
    required this.iconName,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          child: Icon(
            iconName,
            color: isSelected ? kPrimaryColor : kGrayColor,
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(
              18,
            ),
          ),
        ),
      ],
    );
  }
}
