import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:instagram/homescreentabs/msgscreen.dart';
import 'package:instagram/homescreentabs/notifications.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var arrContent = [
    {"img": "assets/pimages/dp1.jpg", "name": "Your story"},
    {"img": "assets/pimages/dp2.jpeg", "name": "chauhan._.shab"},
    {"img": "assets/pimages/dp3.jpg", "name": "harshbeniwal"},
    {"img": "assets/pimages/dp4.webp", "name": "anassaifi_111"},
    {"img": "assets/pimages/dp5.jpeg", "name": "kaishhadry"},
    {"img": "assets/pimages/dp6.webp", "name": "sahil_raza_302"},
    {"img": "assets/pimages/dp7.webp", "name": "surajaftab179"},
    {"img": "assets/pimages/dp8.webp", "name": "abhaytiwari.23"},
    {"img": "assets/pimages/dp9.jpg", "name": "aestheticdelhii"},
    {"img": "assets/pimages/dp10.jpg", "name": "divya.4576"},
    {"img": "assets/pimages/dp11.webp", "name": "nakulkashyap7889"},
    {"img": "assets/pimages/dp12.jpeg", "name": "mr_shiv_m"},
    {"img": "assets/pimages/dp13.jpg", "name": "creativesinha"},
    {"img": "assets/pimages/dp14.webp", "name": "srushtinahitokaun"},
    {"img": "assets/pimages/dp15.jpeg", "name": "raftarmusic"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: 150,
          leading: Container(
              padding: const EdgeInsets.only(left: 5),
              child: Image.asset('assets/pimages/Instagram_logo.PNG')),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.to(() => const NotificationsScreen());
                  },
                  icon: Badge(
                    isLabelVisible: true,
                    padding: const EdgeInsets.all(10),
                    offset: const Offset(6, -1),
                    backgroundColor: Colors.red,
                    child: SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset("assets/pimages/heart.png")),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Get.to(() => const MessageScreen());
                  },
                  icon: Badge(
                    isLabelVisible: true,
                    // largeSize: 25,
                    // smallSize: 0s,
                    label: const Text("10"),
                    padding: const EdgeInsets.all(2),
                    offset: const Offset(4, -7),
                    backgroundColor: Colors.red,
                    child: SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset("assets/pimages/msg.png")),
                  ),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            )
          ],
        ),
        body: GestureDetector(
          onHorizontalDragEnd: (DragEndDetails details) {
            if (details.primaryVelocity! < 0) {
              // Get.to(const MessageScreen());
              Get.to(() => const MessageScreen());
            }
          },
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
                // height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: arrContent.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.amber.shade900,
                                child: CircleAvatar(
                                    radius: 41,
                                    backgroundImage: AssetImage(
                                        arrContent[index]["img"].toString())),
                              )),
                          SizedBox(
                            height: 15,
                            width: 90,
                            // color: Colors.red,
                            child: Text(
                              arrContent[index]["name"].toString(),
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height / 1.5,
                        width: double.infinity,
                        // color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.amber.shade900,
                                child: CircleAvatar(
                                  radius: 22,
                                  child:
                                      Image.asset("assets/images/Oval (2).png"),
                                ),
                              ),
                              title: const Text(
                                "geneliad",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              subtitle: const Text(
                                "Laxmi Nagar,Delhi",
                                style: TextStyle(fontSize: 12),
                              ),
                              trailing: const Icon(Icons.more_vert),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 2,
                              width: double.infinity,
                              // color: Colors.green,
                              child: Image.asset(
                                "assets/images/Rectangle (1).png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Row(
                                children: [
                                  SizedBox(
                                      height: 25,
                                      width: 25,
                                      child: Image.asset(
                                          "assets/pimages/heart.png")),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text(
                                    "3,363",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                      height: 25,
                                      width: 25,
                                      child: Image.asset(
                                          "assets/pimages/comment.png")),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text(
                                    "3,363",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                      height: 25,
                                      width: 25,
                                      child: Image.asset(
                                          "assets/pimages/send.png")),
                                  Spacer(),
                                  SizedBox(
                                      height: 25,
                                      width: 25,
                                      child: Image.asset(
                                          "assets/pimages/save.png")),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
