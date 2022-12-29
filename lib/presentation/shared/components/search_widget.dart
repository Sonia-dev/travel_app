import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../style/colors/colors.dart';

Widget searchWidget(
        {required width, required TextEditingController controller}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width,
          height: 30,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Places',
                hintStyle: TextStyle(fontSize: 10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.grey))),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.primarypurple,
          ),
          child: SvgPicture.asset(
            'assets/svg/li_settings.svg',
            color: Colors.white,
            fit: BoxFit.scaleDown,
          ),
        )
      ],
    );
