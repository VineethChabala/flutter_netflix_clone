import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/data.dart';
import 'package:flutter_netflix_clone/screens/search_screen.dart';
import 'package:flutter_netflix_clone/widgets/movielist.dart';
import 'package:video_player/video_player.dart';

class PlayScreen extends StatefulWidget {
  final Content content;

  const PlayScreen({super.key, required this.content});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.asset(widget.content.videoUrl)
      ..initialize().then((_) => {
            setState(
              () {
                _controller.play();
              },
            )
          });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            color: Colors.white,
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchScreen()),
                  );
                },
                icon: const Icon(Icons.search)),
            IconButton(
                color: Colors.white,
                onPressed: () => print("Profile"),
                icon: const Icon(Icons.account_box))
          ],
        ),
        body: SingleChildScrollView(
          child: SizedBox(
              height: size.height + 100,
              width: size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 220.0,
                    child: Stack(
                      children: [
                        AspectRatio(
                            aspectRatio: size.width / 220.0,
                            child: VideoPlayer(_controller)),
                        Center(
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(_controller.value.isPlaying
                                ? null
                                : Icons.play_arrow),
                            onPressed: () {
                              setState(() {
                                _controller.value.isPlaying
                                    ? _controller.pause()
                                    : _controller.play();
                              });
                            },
                            iconSize: 50.0,
                          ),
                        ),
                        const Positioned(
                          left: 5.0,
                          bottom: 20.0,
                          child: Text(
                            "Preview",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Positioned(
                          right: 5.0,
                          bottom: 20.0,
                          child: IconButton(
                              color: Colors.white,
                              onPressed: () => print("mute"),
                              icon: const Icon(Icons.volume_mute)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      widget.content.name,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 32.0),
                    ),
                  ),
                  widget.content.isTvshow
                      ? Column(
                          children: [
                            Container(
                              height: 50.0,
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    "New",
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.green),
                                  ),
                                  const Text(
                                    "2016",
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.white),
                                  ),
                                  Container(
                                    color: Colors.grey,
                                    child: const Text(
                                      "18+",
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.white),
                                    ),
                                  ),
                                  const Text(
                                    "4 Seasons",
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.grey),
                                  ),
                                  const ColoredBox(
                                    color: Colors.transparent,
                                    child: Text(
                                      "HD",
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.white),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        print("List");
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                                "Watch Season 1 Now",
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      : Container(
                          color: Colors.transparent,
                        ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    width: size.width,
                    color: Colors.transparent,
                    child: FloatingActionButton.extended(
                      heroTag: "play",
                      backgroundColor: Colors.white,
                      onPressed: () {
                        print("play");
                      },
                      label: const Text(
                        "Play",
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                      icon: const Icon(Icons.play_arrow),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    width: size.width,
                    color: Colors.transparent,
                    child: FloatingActionButton.extended(
                      heroTag: "Download",
                      backgroundColor: Colors.grey.withOpacity(0.5),
                      onPressed: () {
                        print("Download");
                      },
                      label: const Text(
                        "Download",
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                      icon: const Icon(
                        Icons.download,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  widget.content.isTvshow
                      ? Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            "S1 E1: Hawkins Lab",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                        )
                      : Container(
                          color: Colors.transparent,
                        ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.content.description,
                      style:
                          const TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                  const MovieList(
                      title: "More Like This",
                      contentList: trending,
                      isOriginals: false)
                ],
              )),
        ));
  }
}
