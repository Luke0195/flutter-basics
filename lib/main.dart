import 'package:flutter/material.dart';
import 'components/profile.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String urlImage =
      "https://img.freepik.com/free-photo/scenic-sunrise-high-mountains-alpes-generative-ai_191095-494.jpg";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
          Image.network(urlImage),
          const Profile(),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 16),
              child: const Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Me',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Text("Hi, I'm Lucas Santos from Brazil.",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.grey)),
                    Text(
                      'Currently i work as front-end developer, but thing is time to change the course of things a ;learn and experience new thing, actually, I work with backend using java and learning flutter.',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.grey),
                    )
                  ],
                ),
              ))
        ]))));
  }
}
