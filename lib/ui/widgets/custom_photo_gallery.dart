import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomPhotoGallery extends StatelessWidget {
  final String imgUrl;

  const CustomPhotoGallery({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        image: DecorationImage(
          image: AssetImage(imgUrl),
        ),
      ),
    );
  }
}
