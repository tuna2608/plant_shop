import 'package:flutter/material.dart';
import 'package:plant_shop/constant.dart';
import 'package:plant_shop/screens/home/components/featured_plants.dart';
import 'package:plant_shop/screens/home/components/header_with_search_box.dart';
import 'package:plant_shop/screens/home/components/recomended_plants.dart';
import 'package:plant_shop/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //it show size of height and width screen
    Size size = MediaQuery.of(context).size;
    // It show scroll
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          RecomendedPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
