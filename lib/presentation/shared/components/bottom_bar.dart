import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../../style/colors/colors.dart';
Widget bottomBar() =>
    BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    color: AppColors.primarypurple,
                    borderRadius: BorderRadius.circular(3)),
                child: SvgPicture.asset(
                  fit: BoxFit.scaleDown,

                  "assets/svg/li_home.svg", //asset location
                  color: Colors.white, //svg color
                )),
            label: ''),
        BottomNavigationBarItem(
            icon: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3)),
                child: SvgPicture.asset(
                  fit: BoxFit.scaleDown,

                  "assets/svg/li_bookmark-plus.svg", //asset location
                  color: AppColors.textgray, //svg color
                )),
            label: ''),
        BottomNavigationBarItem(
            icon: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3)),
                child: SvgPicture.asset(
                  fit: BoxFit.scaleDown,

                  "assets/svg/li_user.svg", //asset location
                  color: AppColors.textgray, //svg color
                )),
            label: '')
      ],
    );

