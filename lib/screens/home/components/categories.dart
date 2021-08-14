import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(icon),
              ),
            ),
            SizedBox(height: 10),
            Text(text, textAlign: TextAlign.center),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: StaggeredGridView.countBuilder(
        shrinkWrap: true,
        crossAxisCount: 2,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) => Container(
          height: getProportionateScreenHeight(200),
          child: CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(1, index.isOdd ? 1.4 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }

  final List<Map<String, dynamic>> categories = [
    {
      "icon":
          "https://img.tatacliq.com/images/i7/437Wx649H/MP000000009724463_437Wx649H_202107231047071.jpeg",
      "text": "Flash Deal"
    },
    {
      "icon":
          "https://www.incimages.com/uploaded_files/image/1920x1080/getty_507716250_226806.jpg",
      "text": "Bill"
    },
    {
      "icon":
          "https://image.shutterstock.com/image-photo/elegant-dark-apartment-interior-classic-260nw-1067812865.jpg",
      "text": "Game"
    },
    {
      "icon":
          "https://upload.wikimedia.org/wikipedia/en/9/9e/Lil_Nas_X_Satan_Shoes.png",
      "text": "Daily Gift"
    },
    {
      "icon":
          "https://www.uvdesk.com/wp-content/uploads/2019/07/Food-Delivery-2.jpeg",
      "text": "More"
    },
  ];
}
