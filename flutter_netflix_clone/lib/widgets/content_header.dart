import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/data.dart';
import 'package:flutter_netflix_clone/screens/video_detail_screen.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    Content content = const Content(
        name: "Strangerthings",
        description:
            """ When a young boy disappears, his mother, a police chief and his friends must confront terrifying supernatural forces in order to get him back.""",
        imageUrl: "assets/images/bannerimage.jpg",
        videoUrl: "assets/images/tvshow.mp4",
        isTvshow: true);
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
                  heroTag: "1",
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
                  heroTag: "2",
                  backgroundColor: Colors.white,
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PlayScreen(
                                content: content,
                              )),
                    )
                  },
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
                  heroTag: "3",
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
