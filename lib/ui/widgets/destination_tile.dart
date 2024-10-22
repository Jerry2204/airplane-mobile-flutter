import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class DestinationTile extends StatelessWidget {
  const DestinationTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
      padding: const EdgeInsets.all(
        10,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(
          defaultRadius,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(
              right: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                defaultRadius,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/image_destination6.png',
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Danau Beratan',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Singajara',
                  style: grayTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(
                  right: 2,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_star.png',
                    ),
                  ),
                ),
              ),
              Text(
                '4.5',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
