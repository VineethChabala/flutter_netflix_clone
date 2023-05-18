import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/data.dart';
import 'package:flutter_netflix_clone/screens/search_screen.dart';

class NewandHotScreen extends StatefulWidget {
  const NewandHotScreen({super.key});

  @override
  State<NewandHotScreen> createState() => _NewandHotScreenState();
}

class _NewandHotScreenState extends State<NewandHotScreen> {
  String title = "🍿Coming Soon";

  Widget getbody(String str) {
    if (str == "🔥Everyone's Watching") {
      return Column(
        children: [
          comingsoon(
              image: trending[0].imageUrl,
              description: trending[0].description,
              isCominsoon: false),
          comingsoon(
              image: trending[1].imageUrl,
              description: trending[1].description,
              isCominsoon: false),
        ],
      );
    }
    if (str == "🔟Top 10 TV Shows") {
      return Column(
        children: [
          comingsoon(
              image: trending[0].imageUrl,
              description: trending[0].description,
              isCominsoon: false),
          comingsoon(
              image: trending[7].imageUrl,
              description: trending[7].description,
              isCominsoon: false),
          comingsoon(
              image: strangerthings.imageUrl,
              description: strangerthings.description,
              isCominsoon: false),
        ],
      );
    }
    if (str == "🔟Top 10 Movies") {
      return Column(
        children: [
          comingsoon(
              day: "JUN 5",
              image: trending[2].imageUrl,
              description: trending[2].description,
              isCominsoon: true),
          comingsoon(
              image: trending[1].imageUrl,
              description: trending[1].description,
              isCominsoon: false),
        ],
      );
    }
    return Column(
      children: [
        comingsoon(
            day: 'JUN 16',
            image: trending[7].imageUrl,
            description: trending[7].description,
            isCominsoon: true),
        comingsoon(
            day: "JUL 17",
            image: strangerthings.imageUrl,
            description: strangerthings.description,
            isCominsoon: true),
        comingsoon(
            day: "JUN 5",
            image: trending[2].imageUrl,
            description: trending[2].description,
            isCominsoon: true)
      ],
    );
  }

  Column comingsoon(
      {day, required image, required description, required isCominsoon}) {
    return Column(
      children: [
        SizedBox(
          child: Row(children: [
            isCominsoon
                ? SizedBox(
                    height: 200.0,
                    width: 75.0,
                    child: Text(
                      day,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 32.0),
                    ),
                  )
                : const SizedBox(
                    height: 50,
                    width: 50,
                  ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 200.0,
                width: 250.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))),
              ),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            child: Text(
              description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget gettitle(String str) {
    return Container(
      alignment: Alignment.topLeft,
      color: Colors.transparent,
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 28.0),
      ),
    );
  }

  List<Widget> horizontalButtons() {
    List<Widget> buttons = [];
    buttons.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton.extended(
        heroTag: "🍿 Coming Soon",
        backgroundColor: Colors.grey.withOpacity(0.5),
        onPressed: () {
          setState(() {
            title = "🍿 Coming Soon";
          });
        },
        label: const Text(
          "🍿Coming Soon",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ));
    buttons.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton.extended(
        heroTag: "🔥Everyone's Watching",
        backgroundColor: Colors.grey.withOpacity(0.5),
        onPressed: () {
          setState(() {
            title = "🔥Everyone's Watching";
          });
        },
        label: const Text(
          "🔥Everyone's Watching",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ));
    buttons.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton.extended(
        heroTag: "🔟Top 10 TV Shows",
        backgroundColor: Colors.grey.withOpacity(0.5),
        onPressed: () {
          setState(() {
            title = "🔟Top 10 TV Shows";
          });
        },
        label: const Text(
          "🔟Top 10 TV Shows",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ));
    buttons.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton.extended(
        heroTag: "🔟Top 10 Movies",
        backgroundColor: Colors.grey.withOpacity(0.5),
        onPressed: () {
          setState(() {
            title = "🔟Top 10 Movies";
          });
        },
        label: const Text(
          "🔟Top 10 Movies",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ));
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 50.0),
        child: const NHAppBar(),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 50.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: horizontalButtons(),
            ),
          ),
          gettitle(title),
          getbody(title),
          // Container(
          //   height: 500.0,
          //   color: Colors.amber,
          // )
        ],
      )),
    );
  }
}

class NHAppBar extends StatelessWidget {
  const NHAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 50.0,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "New and Hot",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => print("Cast Screen Pressed"),
                icon: const Icon(Icons.cast),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchScreen()),
                  );
                },
                icon: const Icon(Icons.search),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () => print("Profile pressed"),
                icon: const Icon(Icons.account_box),
                color: Colors.white,
              )
            ],
          )
        ]),
      ),
    );
  }
}
