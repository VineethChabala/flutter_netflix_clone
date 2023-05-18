import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/data.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
              onPressed: () => print("Profile"),
              icon: const Icon(
                Icons.account_box,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  labelText: "Search for Movies, Shows",
                  labelStyle: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 16.0),
            Container(
              alignment: Alignment.centerLeft,
              height: 50.0,
              child: const Text(
                "Popular Searches",
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ),
            const SizedBox(height: 16.0),
            searchItem(
                image: strangerthings.imageUrl, name: strangerthings.name),
            const SizedBox(height: 16.0),
            searchItem(image: trending[0].imageUrl, name: trending[0].name),
            const SizedBox(height: 16.0),
            searchItem(image: trending[1].imageUrl, name: trending[1].name),
            const SizedBox(height: 16.0),
            searchItem(image: trending[2].imageUrl, name: trending[2].name),
            const SizedBox(height: 16.0),
            searchItem(image: trending[3].imageUrl, name: trending[3].name),
            const SizedBox(height: 16.0),
            searchItem(image: trending[4].imageUrl, name: trending[4].name),
          ],
        ),
      ),
    );
  }

  Container searchItem({required image, required name}) {
    return Container(
      height: 150.0,
      color: Colors.transparent,
      child: Row(children: [
        Container(
          height: 150.0,
          width: 150.0,
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage(image))),
        ),
        Container(
          width: 190.0,
          alignment: Alignment.centerLeft,
          child: Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 24.0),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
            onPressed: () => print("play"),
          ),
        )
      ]),
    );
  }
}
