import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/style/colors/colors.dart';

Widget ExchangeScreen({required TextEditingController controller}) => Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              from_devise(
                  controller: controller, nameDevise: 'USD', FromTo: 'From'),
              SizedBox(
                width: 30,
              ),
              SvgPicture.asset(
                width: 20,
                height: 20,
                fit: BoxFit.scaleDown,
                'assets/svg/exchange-svgrepo-com.svg',
                color: AppColors.primarypurple,
              ),
              SizedBox(
                width: 30,
              ),
              from_devise(
                  controller: controller, nameDevise: 'BDT', FromTo: 'To'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            ' Exchange Rate',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          table(),
        ],
      ),
    );

Widget from_devise({
  required TextEditingController controller,
  required String nameDevise,
  required String FromTo,
  Key? key,
}) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(FromTo), Icon(Icons.arrow_drop_down_outlined)],
        ),
        Container(
          width: 100,
          height: 30,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                hintText: nameDevise,
                hintStyle: TextStyle(fontSize: 10),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey))),
          ),
        ),
      ],
    );

Widget table() => Table(

     columnWidths: const {
      0: FlexColumnWidth(4),
      1: FlexColumnWidth(2),
      2: FlexColumnWidth(2),
    },

  border: TableBorder(horizontalInside: BorderSide()),
        children: [
          TableRow(children: [
            Text(
              "Country",

            ),
            Text("USD"),
            Text("CR"),
          ]),
          TableRow(children: [
            Row(
              children: [
                Image.asset('assets/images/ribat-monastir.jpg',width: 16,height: 16,),
                Text("AKTU", textScaleFactor: 1.5),
              ],
            ),
            Text("ABESEC", textScaleFactor: 1.5),
            Text("AKTU", textScaleFactor: 1.5),
          ]),
          TableRow(children: [
            Row(
              children: [
                Image.asset('assets/images/ribat-monastir.jpg',width: 16,height: 16,),
                Text("AKTU", textScaleFactor: 1.5),
              ],
            ),       Text("ABESEC", textScaleFactor: 1.5),
            Text("AKTU", textScaleFactor: 1.5),
          ]),
          TableRow(children: [
            Row(
              children: [
                Image.asset('assets/images/ribat-monastir.jpg',width: 16,height: 16,),
                Text("AKTU", textScaleFactor: 1.5),
              ],
            ),
            Text("ABESEC", textScaleFactor: 1.5),
            Text("AKTU", textScaleFactor: 1.5),
          ]),
        ]);
