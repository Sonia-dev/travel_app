



import 'package:flutter/cupertino.dart';

Widget carouselImage({
  required double width ,

}) =>
    Container(
      height: 200,
      width: width,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage('assets/images/SliderImage.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
