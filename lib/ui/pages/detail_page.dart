import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/image_destination1.png',
            ),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(
          top: 236,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            // NOTE: EMBLEM
            Container(
              width: 108,
              height: 24,
              margin: EdgeInsets.only(
                top: 30,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/emblem.png',
                  ),
                ),
              ),
            ),

            // NOTE: TITLE
            Container(
              margin: EdgeInsets.only(
                top: 256,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Tangerang',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
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
                        '4.8',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            // NOTE: DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 30,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOTE: ABOUT
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Lorem ipsum odor amet, consectetuer adipiscing elit. Massa semper habitasse molestie dapibus augue efficitur quisque conubia penatibus. Luctus nostra netus orci orci adipiscing feugiat.',
                    style: blackTextStyle.copyWith(
                      height: 2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // NOTE: PHOTOS
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      PhotoItem(
                        imageUrl: 'assets/image_photo1.png',
                      ),
                      PhotoItem(
                        imageUrl: 'assets/image_photo2.png',
                      ),
                      PhotoItem(
                        imageUrl: 'assets/image_photo3.png',
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          backgroundImage(),
          customShadow(),
          content(),
        ],
      ),
    );
  }
}