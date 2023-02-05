import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_travel_bwa/cubit/cubit_cubit.dart';
import 'package:flutter_travel_bwa/ui/pages/home_page.dart';
import 'package:flutter_travel_bwa/ui/pages/settings_page.dart';
import 'package:flutter_travel_bwa/ui/pages/transactions_page.dart';
import 'package:flutter_travel_bwa/ui/pages/wallet_page.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_bottom_navbar_item.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch(currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionsPage();
        case 2: 
          return WalletPage();
        case 3: 
          return SettingsPage();
        default: 
          return HomePage();
      }
    }

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
                index: 0,
                imgUrl: 'assets/icon_home.png',
              ),
              CustomBottomNavbarItem(
                index: 1,
                imgUrl: 'assets/icon_booking.png',
              ),
              CustomBottomNavbarItem(
                index: 2,
                imgUrl: 'assets/icon_card.png',
              ),
              CustomBottomNavbarItem(
                index: 3,
                imgUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<CubitCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNavbar(),
            ],
          ),
        );
      },
    );
  }
}
