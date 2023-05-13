import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/data.dart';

class MovieList extends StatelessWidget {
  const MovieList(
      {super.key,
      required this.title,
      required this.contentList,
      required this.isOriginals});

  final String title;
  final List<Content> contentList;
  final bool isOriginals;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: isOriginals ? 500.0 : 160.0,
          child: ListView.builder(
              itemCount: contentList.length,
              scrollDirection: Axis.horizontal,
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              itemBuilder: (BuildContext context, int index) {
                final Content content = contentList[index];
                return GestureDetector(
                  onTap: () => print(content.name),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    height: isOriginals ? 400.0 : 200.0,
                    width: isOriginals ? 300.0 : 100.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(content.imageUrl))),
                  ),
                );
              }),
        )
      ],
    );
  }
}

class Continue extends StatelessWidget {
  const Continue({
    super.key,
    required this.contentList,
  });

  final List<Content> contentList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Continue Watching",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
            height: 250.0,
            child: ListView.builder(
                itemCount: contentList.length,
                scrollDirection: Axis.horizontal,
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                itemBuilder: (BuildContext context, int index) {
                  final Content content = contentList[index];
                  return Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            height: 150.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(content.imageUrl))),
                          ),
                          Container(
                            color: Colors.grey,
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            height: 50.0,
                            width: 100.0,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () => print("Info"),
                                    icon: const Icon(
                                      Icons.info_outline,
                                      color: Colors.black,
                                    )),
                                IconButton(
                                    onPressed: () => print("More Pressed"),
                                    icon: const Icon(
                                      Icons.more_vert,
                                      color: Colors.black,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        height: 150.0,
                        width: 100.0,
                        child: IconButton(
                          icon: const Icon(
                            Icons.play_circle_fill_outlined,
                            color: Colors.black,
                            size: 75.0,
                          ),
                          onPressed: () =>
                              print("${content.name} pressed to play"),
                        ),
                      )
                    ],
                  );
                }))
      ],
    );
  }
}
