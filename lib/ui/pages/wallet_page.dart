import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Text(
          'Wallet Page',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}