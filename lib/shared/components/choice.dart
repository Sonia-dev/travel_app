import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/style/colors/colors.dart';

Widget ChoiceWidget({
  required String text,
  Color color = AppColors.textgray,
  required String imagePath,
  required bool isClicked ,
}) =>
    Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 45.0,
            width: 45.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: isClicked
                  ? Border.all(
                      color: AppColors.primarypurple, //
                      width: 1.5,
                    )
                  : Border.all(color: Colors.white10,width: 1.5),
              image: DecorationImage(
                scale: 1.5,
                image: AssetImage(imagePath),
              ),
              shape: BoxShape.circle,
            ),
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: isClicked
                    ? Colors.black:color,
                fontFamily: 'Poppins'),
          )
        ],
      ),
    );
