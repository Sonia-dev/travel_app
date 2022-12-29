import 'package:flutter/material.dart';
import 'package:travel_app/style/colors/colors.dart';
import '../../../data/models/choice.dart';
import '../../../data/models/popular.dart';
import '../../shared/components/appbar.dart';
import '../../shared/components/bottom_bar.dart';
import '../../shared/components/carousel_images.dart';
import '../../shared/components/carrousel_popular.dart';
import '../../shared/components/choice.dart';
import '../../shared/components/popular_location.dart';
import '../../shared/components/search_widget.dart';
import '../../shared/components/textwelcome.dart';
import '../exchange/exchange_screen.dart';

class HomePlaces extends StatelessWidget {
  const HomePlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    var appBarWidth = MediaQuery.of(context).size.width;
    var appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
          preferredSize: Size(appBarWidth, appBarHeight), child: appBar()),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            welcomeText(),
            SizedBox(
              height: 30,
            ),
            searchWidget(controller: controller, width: appBarWidth / 1.40),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 6,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: choices.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return ChoiceWidget(
                      text: choices[index].choiceName,
                      imagePath: choices[index].imagepath,
                      isClicked: choices[index].isClicked);
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),

           // ExchangeScreen(controller: controller),

         carouselImage(width: MediaQuery.of(context).size.width),
            SizedBox(
              height: 30,
            ),
            offerLocationtext(
                textright: 'Popular Location', textleft: 'See all'),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 6,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: populars.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return popular(
                      imagePath: populars[index].imagepath,
                      locationName: populars[index].locationName,
                      address: populars[index].address,
                      kilometre: populars[index].kilometre);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomBar(),
    );
  }
}
