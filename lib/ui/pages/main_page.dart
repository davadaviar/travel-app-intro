import 'package:flutter/material.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_bottom_navbar_item.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavbar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: kBlackColor.withOpacity(0.1),
                blurRadius: 30,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavbarItem(
                imgUrl: 'assets/icon_home.png',
                iselected: true,
              ),
              CustomBottomNavbarItem(
                imgUrl: 'assets/icon_booking.png',
                iselected: false,
              ),
              CustomBottomNavbarItem(
                imgUrl: 'assets/icon_card.png',
                iselected: false,
              ),
              CustomBottomNavbarItem(
                imgUrl: 'assets/icon_settings.png',
                iselected: false,
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
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          customBottomNavbar(),
        ],
      ),
    );
  }
}
