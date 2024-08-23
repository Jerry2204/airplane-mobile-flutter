import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  Widget bonusCard() {
    return Container(
      width: 300,
      height: 211,
      padding: EdgeInsets.all(defaultMargin),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/image_card.png',
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(
              0.5,
            ),
            blurRadius: 50,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: whiteTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      'Kezia Anne',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: medium,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Container(
                width: 24,
                height: 24,
                margin: EdgeInsets.only(
                  right: 6,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_plane.png',
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
          ],
        ),
      ),
    );
  }
}
