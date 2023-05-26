import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/constants.dart';
import 'package:flutter_netflix_clone/screens/adminscreen.dart';
import 'package:flutter_netflix_clone/screens/nav_screen.dart';
import 'package:flutter_netflix_clone/screens/search_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchScreen()),
                  );
                },
                icon: const Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                ))
          ],
        ),
        body: isloggedin
            ? Container(
                color: Colors.amber,
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      isloggedin = false;
                      loggedinas = "user";
                    });
                  },
                  backgroundColor: Colors.blue,
                  child: const Text("press"),
                ),
              )
            : Center(
                child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                              labelText: 'Username',
                              labelStyle: TextStyle(color: Colors.white)),
                        ),
                        const SizedBox(height: 16.0),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.white)),
                        ),
                        const SizedBox(height: 16.0),
                        DropdownButtonFormField<String>(
                          dropdownColor: Colors.black,
                          items: const [
                            DropdownMenuItem(
                              value: 'user',
                              child: Text('User',
                                  style: TextStyle(color: Colors.white)),
                            ),
                            DropdownMenuItem(
                              value: 'admin',
                              child: Text('Admin',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              loggedinas = value!;
                            });
                            ;
                          },
                          decoration: const InputDecoration(
                              labelText: 'Role',
                              labelStyle: TextStyle(color: Colors.white)),
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedButton(
                          onPressed: () {
                            isloggedin = true;
                            if (loggedinas == "admin") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AdminScreen()));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const NavScreen()));
                            }
                          },
                          child: const Text('Login'),
                        ),
                      ],
                    ),
                  ),
                ],
              )));
  }
}
