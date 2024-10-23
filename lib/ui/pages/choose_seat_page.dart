import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  Widget title() {
    return Container(
      margin: EdgeInsets.only(
        top: 50,
      ),
      child: Text(
        'Select Your\nFavorite Seat',
        style: blackTextStyle.copyWith(
          fontSize: 24,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Widget seatStatus() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Row(
        // NOTE: AVAILABLE
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(
              right: 6,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_available.png',
                ),
              ),
            ),
          ),
          Text(
            'Available',
            style: blackTextStyle,
          ),
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(
              left: 10,
              right: 6,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_selected.png',
                ),
              ),
            ),
          ),
          Text(
            'Selected',
            style: blackTextStyle,
          ),
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(
              left: 10,
              right: 6,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_unselected.png',
                ),
              ),
            ),
          ),
          Text(
            'Unavailable',
            style: blackTextStyle,
          ),
        ],
      ),
    );
  }

  Widget selectSeat() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 30,
      ),
      margin: EdgeInsets.only(
        top: 30,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(
          defaultRadius,
        ),
      ),
      child: Column(
        children: [
          // NOTE: SEAT INDICATOR
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'A',
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'B',
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    '',
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'C',
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'D',
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // NOTE: SEAT 1
          Container(
            margin: EdgeInsets.only(
              top: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 1,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '1',
                      style: grayTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 2,
                ),
              ],
            ),
          ),

          // NOTE: SEAT 2
          Container(
            margin: EdgeInsets.only(
              top: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 2,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '2',
                      style: grayTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 2,
                ),
              ],
            ),
          ),

          // NOTE: SEAT 3
          Container(
            margin: EdgeInsets.only(
              top: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 1,
                ),
                SeatItem(
                  status: 0,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '3',
                      style: grayTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 2,
                ),
              ],
            ),
          ),

          // NOTE: SEAT 4
          Container(
            margin: EdgeInsets.only(
              top: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '4',
                      style: grayTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
              ],
            ),
          ),

          // NOTE: SEAT 5
          Container(
            margin: EdgeInsets.only(
              top: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 2,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '5',
                      style: grayTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 2,
                ),
              ],
            ),
          ),

          // NOTE: YOUR SEAT
          Container(
            margin: EdgeInsets.only(
              top: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your seat',
                  style: grayTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                Text(
                  'B1, A3',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),

          // NOTE: TOTAL
          Container(
            margin: EdgeInsets.only(
              top: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: grayTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                Text(
                  'IDR 540.000.000',
                  style: purpleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget checkoutButton() {
    return CustomButton(
      title: 'Continue to Checkout',
      onPressed: () {},
      margin: EdgeInsets.only(
        top: 30,
        bottom: 46,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}
