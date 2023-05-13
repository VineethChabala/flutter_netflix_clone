import 'package:flutter/material.dart';

class Content {
  final String name;
  final String imageUrl;
  final String titleImageUrl;
  final String videoUrl;
  final String description;
  final Color color;

  const Content({
    required this.name,
    required this.imageUrl,
    this.titleImageUrl = "",
    this.videoUrl = "",
    this.description = "",
    this.color = Colors.transparent,
  });
}

const List<Content> trending = [
  Content(name: 'Lucifer', imageUrl: "assets/images/lucifer.jpg"),
  Content(name: 'Enola Holmes 2', imageUrl: "assets/images/enolaHolmes2.jpg"),
  Content(name: 'Glass Onion', imageUrl: "assets/images/GlassOnion.jpg"),
  Content(name: 'The Umbrella Academy', imageUrl: "assets/images/umba.jpg"),
  Content(name: 'Dasara', imageUrl: "assets/images/dasara.webp"),
  Content(name: 'Bhavesh Joshi', imageUrl: "assets/images/bhaveshjoshi.jpg"),
  Content(name: 'Never Have I Ever', imageUrl: "assets/images/neverhaveiever.webp"),    
  Content(name: 'The Vampire Diaries', imageUrl: "assets/images/tvd.jpg"),
  Content(name: 'Rick and Morty', imageUrl: "assets/images/rnm.jpg"),
  Content(name: 'F.R.I.E.N.D.S', imageUrl: "assets/images/friends.jpg"),
];
