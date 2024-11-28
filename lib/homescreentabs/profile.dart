import 'package:flutter/material.dart';
import 'package:instagram/homescreentabs/postscreen.dart';
import 'package:instagram/homescreentabs/reels.dart';
import 'package:instagram/homescreentabs/tagscreen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 400,
          leading: Row(
            children: [
              Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: const Icon(
                    Icons.lock,
                    size: 20,
                  )),
              const Text(
                "whofiroz",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Icon(
                Icons.arrow_drop_down_sharp,
                size: 30,
              ),
              const Spacer(),
              SizedBox(
                  height: 25,
                  width: 25,
                  child: Image.asset("assets/pimages/thread.png")),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                  height: 25,
                  width: 25,
                  child: Image.asset("assets/pimages/add.png")),
              const SizedBox(
                width: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.menu_rounded,
                  size: 35,
                ),
              )
            ],
          ),
        ),
        // ignore: prefer_const_constructors
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                      radius: 42,
                      backgroundImage: AssetImage("assets/pimages/dp1.jpg")),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("5",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Text(
                          "posts",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("4.5K",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Text(
                          "followers",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("150",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Text(
                          "following",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                "Firoz Ansari",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              // padding: const EdgeInsets.only(left: 20),
              height: 27,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    height: 25,
                    width: 25,
                    child: Image.asset("assets/pimages/thread.png"),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Text("whofiroz")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: 155,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200),
                    child: const Text(
                      "Edit profile",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 155,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200),
                  child: const Text(
                    "share profile",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200),
                  child: const Icon(Icons.person_add),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.add,
                    ),
                  ),
                ),
                Text("add")
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              bottom: TabBar(
                padding: const EdgeInsets.all(5),
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    height: 25,
                    icon: Image.asset("assets/pimages/grid.png"),
                  ),
                  Tab(
                    height: 25,
                    icon: Image.asset("assets/pimages/reel.png"),
                  ),
                  Tab(
                    height: 25,
                    icon: Image.asset("assets/pimages/tag.png"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: TabBarView(children: [
            PostScreenProfile(),
            const ReelsScreen(),
            const TagsScreen()
          ])),
        ]),
      ),
    );
  }
}
