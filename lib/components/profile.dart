import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  final String profileImage =
      'https://avatars.githubusercontent.com/u/55026379?v=4';
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(75),
          child: Image.network(profileImage, width: 150, height: 150)),
      const Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text("Lucas Santos",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))),
      Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text("Back-end Developer & Flutter Develop",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey[500]))),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.blue, fixedSize: const Size(200, 42)),
            onPressed: () {},
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      'Hire Me',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ))
              ],
            )),
      )
    ]);
  }
}
