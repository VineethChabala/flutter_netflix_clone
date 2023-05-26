import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/screens/adminmovie.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            numberContainer(name: 'Movies', number: 123),
            numberContainer(name: 'TV Shows', number: 456),
            numberContainer(name: 'Live TV', number: 789),
            numberContainer(name: 'Sports', number: 987),
          ],
        ),
      ),
      drawer: _buildSidebar(),
    );
  }

  Widget _buildSidebar() {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SafeArea(
            child: SizedBox(
              height: 80.0,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                child: Text(
                  'Jave',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'Movies',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MoviePage()));
            },
          ),
          ListTile(
            title: const Text(
              'Shows',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Handle container 2 tap
            },
          ),
          ListTile(
            title: const Text(
              'LiveTV',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Handle container 3 tap
            },
          ),
          ListTile(
            title: const Text(
              'Sports',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Handle container 3 tap
            },
          ),
        ],
      ),
    );
  }

  Widget numberContainer({required String name, required int number}) {
    return Center(
      child: Container(
        height: 150.0,
        width: 150.0,
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.symmetric(vertical: 24.0),
        color: Colors.red,
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            Text(
              number.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
