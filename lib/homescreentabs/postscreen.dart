import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PostScreenProfile extends StatelessWidget {
  var arrContent = [
    {"img": "assets/pimages/dp1.jpg"},
    {"img": "assets/pimages/dp2.jpeg"},
    {"img": "assets/pimages/dp3.jpg"},
    {"img": "assets/pimages/dp4.webp"},
    {"img": "assets/pimages/dp5.jpeg"},
    {"img": "assets/pimages/dp6.webp"},
    {"img": "assets/pimages/dp7.webp"},
    {"img": "assets/pimages/dp8.webp"},
    {"img": "assets/pimages/dp9.jpg"}
  ];

  PostScreenProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Container(
            clipBehavior: Clip.antiAlias,
            height: 124,
            width: 124,
            decoration: BoxDecoration(),
            child: Image(
              image: AssetImage(arrContent[index]["img"].toString()),
              fit: BoxFit.fill,
            ));
      },
      itemCount: arrContent.length,
    ));
  }
}
