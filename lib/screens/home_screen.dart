import 'package:cubixd/cubixd.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 44,
            color: Colors.blueGrey,
          ),
        ),
      ),
      body: Center(
        child: AnimatedCubixD(
          onSelected: ((SelectedSide opt) =>
              opt == SelectedSide.bottom ? false : true),
          size: 480,
          top: Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Flutter developer',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
          bottom: Container(
            color: Colors.pink,
            child: const Center(
              child: Text(
                'instagram @dnsflnv',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
          front: Container(
            color: Colors.blueGrey,
            child: const Center(
              child: Text(
                'denis@filonov.pro',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
          back: Container(
            color: const Color.fromARGB(255, 89, 79, 79),
            child: const Center(
              child: Text(
                'GitHub @dnsflnv',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
          right: Container(
            color: const Color.fromARGB(255, 52, 49, 20),
            child: const Center(
              child: Text(
                'LinkedIn @dnsflnv',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
          left: Container(
            color: const Color.fromARGB(255, 33, 62, 86),
            child: const Center(
              child: Text(
                'twitter @dnsflnv',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
