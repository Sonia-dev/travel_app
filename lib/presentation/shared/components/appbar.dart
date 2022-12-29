import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../../style/colors/colors.dart';



Widget appBar({
  double padding = 16,
}) =>
    AppBar(
        elevation: 0,
        leadingWidth: 36,
        backgroundColor: AppColors.backgroundColor,
        leading: Padding(
          padding: EdgeInsets.only(left: padding),
          child: SvgPicture.asset(
            'assets/svg/li_menu.svg',
            color: AppColors.primarypurple,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: padding),
            child: IconButton(
              icon: Image.asset(
                'assets/images/Notification.png',
                width: 46,
                height: 46,
              ),
              onPressed: () {},
            ),
          ),
        ]);
