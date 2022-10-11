import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'image_and_icon_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIconCard(),
          TitleAndPrice(
            title: "Angelia",
            country: "Russia",
            price: 400,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          SizedBox(
            child: Row(
              children: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                      minimumSize: Size(size.width / 2, 84),
                      backgroundColor: kPrimaryColor),
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      minimumSize: Size(size.width / 2, 84),
                      backgroundColor: kBackgroundColor),
                  onPressed: () {},
                  child: Text(
                    "Description",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: country,
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
