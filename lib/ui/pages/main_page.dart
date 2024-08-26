import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_home.png'),
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(
                        18,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_booking.png'),
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(
                        18,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_card.png'),
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(
                        18,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_setting.png'),
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(
                        18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          Text(
            'Main Page',
          ),
          customButtonNavigation(),
        ],
      ),
    );
  }
}
