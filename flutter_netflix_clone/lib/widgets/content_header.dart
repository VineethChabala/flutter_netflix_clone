import 'package:flutter/material.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 450.0,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bannerimage.jpg"),
                  fit: BoxFit.fitWidth)),
        ),
        Container(
            height: 450.0,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
            )),
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250.0,
            child: Image.asset("assets/images/banner title.png"),
          ),
        ),
        const Positioned(
          bottom: 100.0,
          child: Padding(
            padding: EdgeInsets.only(left: 80.0),
            child: SizedBox(
              width: 250.0,
              child: Text(
                "Sci-Fi - Horror - Teen",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ),
        Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton.extended(
                  backgroundColor: Colors.transparent,
                  onPressed: () => print("List"),
                  label: const Text(
                    "List",
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                FloatingActionButton.extended(
                  backgroundColor: Colors.white,
                  onPressed: () => print("Play"),
                  label: const Text(
                    "Play",
                    style: TextStyle(color: Colors.black),
                  ),
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                  ),
                ),
                FloatingActionButton.extended(
                  backgroundColor: Colors.transparent,
                  onPressed: () => print("Info"),
                  label: const Text(
                    "Info",
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: const Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
