import 'package:flutter/material.dart';

class NewandHotScreen extends StatefulWidget {
  const NewandHotScreen({super.key});

  @override
  State<NewandHotScreen> createState() => _NewandHotScreenState();
}

class _NewandHotScreenState extends State<NewandHotScreen> {
  List<Widget> horizontalButtons() {
    List<Widget> buttons = [];
    buttons.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton.extended(
        backgroundColor: Colors.grey.withOpacity(0.5),
        onPressed: () => print("Coming Soon"),
        label: const Text(
          "🍿Coming Soon",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ));
    buttons.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton.extended(
        backgroundColor: Colors.grey.withOpacity(0.5),
        onPressed: () => print("Everyone's Watching"),
        label: const Text(
          "🔥Everyone's Watching",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ));
    buttons.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton.extended(
        backgroundColor: Colors.grey.withOpacity(0.5),
        onPressed: () => print("Games"),
        label: const Text(
          "🕹Games",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ));
    buttons.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton.extended(
        backgroundColor: Colors.grey.withOpacity(0.5),
        onPressed: () => print("Top 10 TV Shows"),
        label: const Text(
          "🔟Top 10 TV Shows",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ));
    buttons.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton.extended(
        backgroundColor: Colors.grey.withOpacity(0.5),
        onPressed: () => print("Top 10 Movies"),
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
          Container(
            height: 50.0,
            color: Colors.green,
          ),
          Container(
            height: 500.0,
            color: Colors.amber,
          )
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
                onPressed: () => print("Search Pressed"),
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
