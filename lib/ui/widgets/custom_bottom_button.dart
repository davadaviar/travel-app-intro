import 'package:flutter/material.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class CustomBottomButton extends StatelessWidget {
  const CustomBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IDR 30.000.000',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      'Per Seat',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: CustomButton(
                title: 'Book Now',
                width: 160,
                onPressed: () {
                  Navigator.pushNamed(context, '/seat-page');
                },
              ),
              label: ''),
        ],
      ),
    );
  }
}
