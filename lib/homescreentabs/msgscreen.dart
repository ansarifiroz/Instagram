import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  var arrContent = [
    {"img": "assets/pimages/dp1.jpg", "name": "Your story"},
    {
      "img": "assets/pimages/dp2.jpeg",
      "name": "chauhan._.shab",
      "msg": "Sent 5m ago"
    },
    {
      "img": "assets/pimages/dp3.jpg",
      "name": "harshbeniwal",
      "msg": "Sent 5m ago"
    },
    {
      "img": "assets/pimages/dp4.webp",
      "name": "anassaifi_111",
      "msg": "Sent 5m ago"
    },
    {
      "img": "assets/pimages/dp5.jpeg",
      "name": "kaishhadry",
      "msg": "Sent 5m ago"
    },
    {
      "img": "assets/pimages/dp6.webp",
      "name": "sahil_raza_302",
      "msg": "Sent 5m ago"
    },
    {
      "img": "assets/pimages/dp7.webp",
      "name": "surajaftab179",
      "msg": "Sent 5m ago"
    },
    {
      "img": "assets/pimages/dp8.webp",
      "name": "abhaytiwari.23",
      "msg": "Sent 5m ago"
    },
    {
      "img": "assets/pimages/dp9.jpg",
      "name": "aestheticdelhii",
      "msg": "Sent 5m ago"
    },
    {
      "img": "assets/pimages/dp10.jpg",
      "name": "divya.4576",
      "msg": "Sent 5m ago"
    },
    {
      "img": "assets/pimages/dp11.webp",
      "name": "nakulkashyap7889",
      "msg": "Sent 5m ago"
    },
    {
      "img": "assets/pimages/dp12.jpeg",
      "name": "mr_shiv_m",
      "msg": "Sent 5m ago"
    },
    {
      "img": "assets/pimages/dp13.jpg",
      "name": "creativesinha",
      "msg": "Sent 5m ago"
    },
    {
      "img": "assets/pimages/dp14.webp",
      "name": "srushtinahitokaun",
      "msg": "Sent 5m ago"
    },
    {
      "img": "assets/pimages/dp15.jpeg",
      "name": "raftarmusic",
      "msg": "Sent 5m ago"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const Text(
              "whofiroz",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 5,
            ),
            Image.asset(
              "assets/pimages/dropdown.png",
              scale: 40,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              "assets/pimages/newmsg.webp",
              scale: 15,
            ),
          )
        ],
      ),
      body: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.primaryVelocity! > 0) {
            Get.back();
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(11),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200),
                child: Row(
                  children: [
                    SizedBox(
                        height: 20,
                        width: 20,
                        child: Lottie.asset("assets/pimages/Ai.json")),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Ask Meta AI or Search",
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 38,
                      backgroundImage: AssetImage("assets/pimages/dp1.jpg"),
                    ),
                  ),
                  Text("Your note")
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Messages",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Requests",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: arrContent.length - 1,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amber.shade900,
                      child: CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage(
                              arrContent[index + 1]["img"].toString())),
                    ),
                    title: Text(
                      arrContent[index + 1]["name"].toString(),
                      style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      arrContent[index + 1]["msg"].toString(),
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    trailing: const Icon(
                      Icons.camera_alt_outlined,
                      size: 30,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
