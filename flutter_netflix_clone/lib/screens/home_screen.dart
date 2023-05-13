import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/data.dart';
import 'package:flutter_netflix_clone/widgets/content_header.dart';
import 'package:flutter_netflix_clone/widgets/custom_appbar.dart';
import 'package:flutter_netflix_clone/widgets/movielist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({required Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 50.0),
          child: const CustomAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50.0,
                color: Colors.transparent,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () => print("TV shows"),
                          child: const Text(
                            "TV Shows",
                            style: TextStyle(color: Colors.white),
                          )),
                      TextButton(
                          onPressed: () => print("Movies"),
                          child: const Text(
                            "Movies",
                            style: TextStyle(color: Colors.white),
                          )),
                      TextButton(
                          onPressed: () => print("New"),
                          child: const Text(
                            "Recently Added",
                            style: TextStyle(color: Colors.white),
                          )),
                      TextButton(
                          onPressed: () => print("List"),
                          child: const Text(
                            "My List",
                            style: TextStyle(color: Colors.white),
                          ))
                    ]),
              ),
              const ContentHeader(),
              const Continue(
                contentList: trending,
                key: PageStorageKey('continue'),
              ),
              const MovieList(
                key: PageStorageKey('trending'),
                title: "Trending Now",
                contentList: trending,
                isOriginals: false,
              ),
              const MovieList(
                key: PageStorageKey("Originals"),
                title: "Netflix Originals",
                contentList: trending,
                isOriginals: true,
              )
            ],
          ),
        ));
  }
}
