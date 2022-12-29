import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../style/colors/colors.dart';

Widget popular({
  required imagePath,
  required locationName,
  required address,
  required kilometre,
}) =>
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      height: 200,
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                address,
                style: TextStyle(fontSize: 6, fontWeight: FontWeight.w600),
              ),
              Container(
                  height: 15,
                  width: 15,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.primarypurple.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30)),
                  child: SvgPicture.asset(
                    height: 8,
                    fit: BoxFit.fitHeight,

                    "assets/svg/li_bookmark-plus.svg", //asset location
                    color: AppColors.primarypurple, //svg color
                  ))
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 10,
                width: 10,
                child: SvgPicture.asset(
                  fit: BoxFit.scaleDown,

                  "assets/svg/li_map-pin.svg", //asset location
                  color: AppColors.primarypurple,
                  //svg color
                ),
              ),
              Text(
                locationName,
                style: TextStyle(
                    fontSize: 6,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textgray),
              ),
              SizedBox(
                width: 40,
              ),
              Text(
                kilometre,
                style: TextStyle(
                    fontSize: 6,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primarypurple),
              )
            ],
          )
        ],
      ),
    );
