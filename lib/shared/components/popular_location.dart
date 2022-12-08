import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../style/colors/colors.dart';

Widget offerLocationtext({
  required String textright,
  required String textleft,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textright,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        Text(
          textleft,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 8,color:AppColors.primarypurple),
        ),

      ],
    );
