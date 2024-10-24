import 'package:airplane/cubit/page_cubit.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final IconData iconName;
  final int index;

  const CustomBottomNavigationItem({
    super.key,
    required this.iconName,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(),
          Container(
            width: 24,
            height: 24,
            child: Icon(
              iconName,
              color: context.read<PageCubit>().state == index
                  ? kPrimaryColor
                  : kGrayColor,
            ),
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.read<PageCubit>().state == index
                  ? kPrimaryColor
                  : kTransparentColor,
              borderRadius: BorderRadius.circular(
                18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
