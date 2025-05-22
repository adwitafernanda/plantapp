import 'package:flutter/material.dart';
import 'package:plantapp/constans.dart';
import 'package:plantapp/screen/home/components/featurred_plants.dart';
import 'package:plantapp/screen/home/components/header_with_searchbox.dart';
import 'package:plantapp/screen/home/components/recomend_plants.dart';
import 'package:plantapp/screen/home/components/title_with_more_bttn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithProfileInfo(
            size: size,
            name: 'AditGans',
            address: 'jl.bima 18 ,Tangerang',
          ),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}