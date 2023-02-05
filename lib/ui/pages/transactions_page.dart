import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Text(
          'Trasnsaction Page',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}