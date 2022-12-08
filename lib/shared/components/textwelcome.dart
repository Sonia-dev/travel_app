import 'package:flutter/cupertino.dart';

Widget welcomeText({
  double size = 17,
}) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          ' Good Morning, Shreya....',
          style: TextStyle(fontFamily: 'Poppins', fontSize: size),
        ),
        Text(
          'Make plan for weekend',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: size),
        )
      ],
    );
