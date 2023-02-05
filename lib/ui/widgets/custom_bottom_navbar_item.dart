import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_travel_bwa/cubit/cubit_cubit.dart';
import '../../shared/theme.dart';

class CustomBottomNavbarItem extends StatelessWidget {
  final int index;
  final String imgUrl;

  const CustomBottomNavbarItem({
    Key? key,
    required this.imgUrl,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CubitCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            imgUrl,
            width: 24,
            height: 24,
            color: context.read<CubitCubit>().state == index
                ? kPrimaryColor
                : kGreyColor,
          ),
          Container(
            width: 30,
            height: 4,
            decoration: BoxDecoration(
              color: context.read<CubitCubit>().state == index
                  ? kPrimaryColor
                  : kTransparentColor,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ],
      ),
    );
  }
}
