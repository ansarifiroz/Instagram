import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(), // Dismiss keyboard on tap
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // Search Bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    prefixIcon:
                        const Icon(Icons.search, color: Colors.black, size: 20),
                    hintText: 'Search',
                    hintStyle:
                        const TextStyle(color: Colors.black, fontSize: 15),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              // Content Grid
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 300,
                            // color: Colors.grey,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 299,
                                  width:
                                      MediaQuery.of(context).size.width / 1.7,
                                  child: Column(
                                    children: [
                                      const Expanded(
                                          child: SizedBox(
                                              height: 148,
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/pimages/img1.avif"),
                                                fit: BoxFit.fill,
                                              ))),
                                      const SizedBox(height: 3),
                                      Expanded(
                                          child: SizedBox(
                                        height: 148,
                                        child: Image.asset(
                                            "assets/pimages/post.jpg"),
                                      )),
                                    ],
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                        color: Colors.blue,
                                        child: const Image(
                                          image: const AssetImage(
                                              "assets/pimages/img2.jpg"),
                                          fit: BoxFit.fill,
                                        ))),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          SizedBox(
                            height: 300,
                            // color: Colors.green,
                            child: Row(
                              children: [
                                const Expanded(
                                    child: const Image(
                                  image: const AssetImage(
                                      "assets/pimages/img3.jpg"),
                                  fit: BoxFit.fill,
                                )),
                                // SizedBox(
                                //   height: 2,
                                // ),
                                SizedBox(
                                  height: 299,
                                  width:
                                      MediaQuery.of(context).size.width / 1.85,
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Container(
                                              color: Colors.red,
                                              child: const Image(
                                                image: const AssetImage(
                                                    "assets/pimages/img4.jpeg"),
                                                fit: BoxFit.fill,
                                              ))),
                                      const SizedBox(height: 3),
                                      Expanded(
                                          child: Container(
                                              color: Colors.purple,
                                              child: const Image(
                                                image: const AssetImage(
                                                    "assets/pimages/img5.jpeg"),
                                                fit: BoxFit.fill,
                                              ))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // First Row of Content Layout
  // Widget _buildContentRow1(BuildContext context) {
  //   return Container(
  //     height: 300,
  //     color: Colors.grey,
  //     child: Row(
  //       children: [
  //         SizedBox(
  //           height: 299,
  //           width: MediaQuery.of(context).size.width / 1.7,
  //           child: Column(
  //             children: [
  //               Expanded(child: Container(color: Colors.white)),
  //               const SizedBox(height: 3),
  //               Expanded(child: Container(color: Colors.pink)),
  //             ],
  //           ),
  //         ),
  //         Expanded(child: Container(color: Colors.blue)),
  //       ],
  //     ),
  //   );
  // }

  // Second Row of Content Layout
  // Widget _buildContentRow2(BuildContext context) {
  //   return Container(
  //     height: 300,
  //     color: Colors.green,
  //     child: Row(
  //       children: [
  //         Expanded(child: Container(color: Colors.yellow)),
  //         SizedBox(
  //           height: 299,
  //           width: MediaQuery.of(context).size.width / 1.7,
  //           child: Column(
  //             children: [
  //               Expanded(child: Container(color: Colors.red)),
  //               const SizedBox(height: 3),
  //               Expanded(child: Container(color: Colors.purple)),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
