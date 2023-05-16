import 'package:flutter/material.dart';

class Content {
  final String name;
  final String imageUrl;
  final String titleImageUrl;
  final String videoUrl;
  final String description;
  final bool isTvshow;

  const Content({
    required this.name,
    required this.imageUrl,
    this.titleImageUrl = "",
    this.videoUrl = "",
    this.description = "",
    this.isTvshow = false,
  });
}

const List<Content> trending = [
  Content(
    name: 'Lucifer',
    imageUrl: "assets/images/lucifer.jpg",
    description:
        """Lucifer Morningstar has decided he's had enough of being the dutiful servant in Hell and decides to spend some time on Earth to better understand humanity. He settles in Los Angeles - the City of Angels.""",
    isTvshow: true,
    videoUrl: "assets/images/tvshow.mp4",
  ),
  Content(
      name: 'Enola Holmes 2',
      imageUrl: "assets/images/enolaHolmes2.jpg",
      description:
          """Now a detective-for-hire, Enola Holmes takes on her first official case to find a missing girl as the sparks of a dangerous conspiracy ignite a mystery that requires the help of friends - and Sherlock himself - to unravel.""",
      videoUrl: "assets/images/movie.mp4"),
  Content(
      name: 'Glass Onion',
      imageUrl: "assets/images/GlassOnion.jpg",
      description:
          """Famed Southern detective Benoit Blanc travels to Greece for his latest case.""",
      videoUrl: "assets/images/movie.mp4"),
  Content(
    name: 'The Umbrella Academy',
    imageUrl: "assets/images/umba.jpg",
    description:
        """A family of former child heroes, now grown apart, must reunite to continue to protect the world.""",
    isTvshow: true,
    videoUrl: "assets/images/tvshow.mp4",
  ),
  Content(
      name: 'Dasara',
      imageUrl: "assets/images/dasara.webp",
      description:
          """In 1990s, Set in small village Veerlapally, Dharani, Vennela, and Suri are childhood friends. Dharani loves Vennela, but she has Suri in her mind. Knowing Suri's interest in Vennela, Dharani sacrifices his love and helps get them married. But Local politics between Rajanna, Shivanna and the latter's son Chinna Nambi threaten to disrupt their lives.""",
      videoUrl: "assets/images/movie.mp4"),
  Content(
      name: 'Bhavesh Joshi',
      imageUrl: "assets/images/bhaveshjoshi.jpg",
      description:
          """A young man who stands for the right discovers that he's destined to do bigger things, which will transform him from a common man into a Superhero.""",
      videoUrl: "assets/images/movie.mp4"),
  Content(
    name: 'Never Have I Ever',
    imageUrl: "assets/images/neverhaveiever.webp",
    description:
        """The complicated life of a first-generation Indian-American teenage girl, inspired by Mindy Kaling's own childhood.""",
    isTvshow: true,
    videoUrl: "assets/images/tvshow.mp4",
  ),
  Content(
    name: 'The Vampire Diaries',
    imageUrl: "assets/images/tvd.jpg",
    description:
        """The lives, loves, dangers and disasters in the town, Mystic Falls, Virginia. Creatures of unspeakable horror lurk beneath this town as a teenage girl is suddenly torn between two vampire brothers.""",
    isTvshow: true,
    videoUrl: "assets/images/tvshow.mp4",
  ),
  Content(
    name: 'Rick and Morty',
    imageUrl: "assets/images/rnm.jpg",
    description:
        """An animated series that follows the exploits of a super scientist and his not-so-bright grandson.""",
    isTvshow: true,
    videoUrl: "assets/images/tvshow.mp4",
  ),
  Content(
    name: 'F.R.I.E.N.D.S',
    imageUrl: "assets/images/friends.jpg",
    description:
        """Follows the personal and professional lives of six twenty to thirty year-old friends living in the Manhattan borough of New York City.""",
    isTvshow: true,
    videoUrl: "assets/images/tvshow.mp4",
  ),
];
