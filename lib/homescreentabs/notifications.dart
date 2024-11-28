import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.amber.shade900,
                child: const CircleAvatar(
                  radius: 26,
                  backgroundImage: NetworkImage(
                      "https://d38b044pevnwc9.cloudfront.net/cutout-nuxt/enhancer/3.jpg"),
                ),
              ),
              title: const Text(
                "Notification message",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "show time,location,lkes,follows",
                style: TextStyle(fontSize: 13),
              ),
              trailing: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.greenAccent),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/pimages/post.jpg",
                    fit: BoxFit.cover,
                    // fit: BoxFit.fill,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
