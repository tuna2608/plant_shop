import 'package:flutter/material.dart';
import 'package:plant_shop/constant.dart';
import 'package:plant_shop/screens/detail/detail_screen.dart';

class RecomendedPlants extends StatelessWidget {
  const RecomendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendedPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russian",
            price: 440,
            press: () {
              Future.delayed(
                const Duration(seconds: 3),
                () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const DetailScreen(),
                    ),
                  );
                },
              );
            },
          ),
          RecomendedPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russian",
            price: 440,
            press: () {
              // Future.delayed(
              //   const Duration(seconds: 2),
              //   () {
              //     Navigator.of(context).push(
              //       MaterialPageRoute(
              //         builder: (context) => const DetailScreen(),
              //       ),
              //     );
              //   },
              // );
            },
          ),
          RecomendedPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russian",
            price: 440,
            press: () {
              // Future.delayed(
              //   const Duration(seconds: 1),
              //   () {
              //     Navigator.of(context).push(
              //       MaterialPageRoute(
              //         builder: (context) => const DetailScreen(),
              //       ),
              //     );
              //   },
              // );
            },
          ),
        ],
      ),
    );
  }
}

class RecomendedPlantCard extends StatelessWidget {
  const RecomendedPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press(),
            child: Container(
              width: 162,
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title \n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
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
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
