import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        color: Colors.transparent,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/logo.png"),
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
            ],
          ),
        ));
  }
}
