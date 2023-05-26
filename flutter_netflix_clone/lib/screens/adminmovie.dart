import 'package:flutter/material.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  String _selectedLanguage = 'All';
  final TextEditingController _searchController = TextEditingController();

  final List<Movie> _movies = [
    Movie('Dasara', 'assets/images/dasara.webp', 'Accessed', true, 'Active',
        'Telugu'),
    Movie('BhaveshJoshi', 'assets/images/bhaveshjoshi.jpg', 'Upcoming', false,
        'Not Active', 'Hindi'),
    Movie('Enola Holmes 2', 'assets/images/enolaHolmes2.jpg', 'Accessed', true,
        'Active', 'English'),
    // Add more movie data here
  ];

  List<Movie> _filteredMovies = [];

  @override
  void initState() {
    super.initState();
    _filteredMovies = _movies;
  }

  void _filterMoviesByLanguage(String language) {
    if (language == 'All') {
      setState(() {
        _filteredMovies = _movies;
      });
    } else {
      setState(() {
        _filteredMovies =
            _movies.where((movie) => movie.language == language).toList();
      });
    }
  }

  void _searchMovies(String query) {
    setState(() {
      _filteredMovies = _movies
          .where(
              (movie) => movie.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Movie Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton<String>(
                value: _selectedLanguage,
                items: const [
                  DropdownMenuItem(
                    value: 'All',
                    child: Text(
                      'All Languages',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'English',
                    child: Text(
                      'English',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Telugu',
                    child: Text(
                      'Telugu',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // Add more language options here
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedLanguage = value!;
                    _filterMoviesByLanguage(_selectedLanguage);
                  });
                },
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _searchController,
                    onChanged: (value) {
                      _searchMovies(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'Search movies...',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          _searchController.clear();
                          _searchMovies('');
                        },
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Perform action when button is pressed
                },
                child: const Text('Action'),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                dataRowMinHeight: 80.0,
                dataRowMaxHeight: 160.0,
                columns: const [
                  DataColumn(
                      label: Text(
                    'Movie Name',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    'Movie Poster',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    'Movie Access',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    'Upcoming',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    'Status',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    'Action',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                ],
                rows: _filteredMovies
                    .map(
                      (movie) => DataRow(
                        cells: [
                          DataCell(Text(
                            movie.name,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )),
                          DataCell(Image.asset(
                            movie.poster,
                          )),
                          DataCell(Text(
                            movie.access,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            movie.upcoming.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            movie.status,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )),
                          DataCell(
                            IconButton(
                              onPressed: () {
                                // Perform action when action button is pressed
                              },
                              icon: const Icon(Icons.play_arrow),
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Movie {
  final String name;
  final String poster;
  final String access;
  final bool upcoming;
  final String status;
  final String language;

  Movie(
    this.name,
    this.poster,
    this.access,
    this.upcoming,
    this.status,
    this.language,
  );
}
