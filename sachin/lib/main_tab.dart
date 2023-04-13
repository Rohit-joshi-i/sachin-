import 'package:flutter/material.dart';
import 'package:sachin/first_tab.dart';
import 'package:sachin/second_tab.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  var listScreens = <Widget>[];
  int tabIndex = 0;
  void _incrementCounter(String message) {
    var snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  @override
  void initState() {
    super.initState();
    listScreens = [FirstTab(), SecondTab()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Demo App'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Demo Header'),
            ),

            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                _incrementCounter('Yay! A SnackBar! For Item 1');
              },
            ),
            Divider(),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {

                _incrementCounter('Yay! A SnackBar! For Item 2');
              },
            ),
            Divider(),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {

                _incrementCounter('Yay! A SnackBar! For Item 3');
              },
            ),
            Divider(),


          ],
        ),
      ),
      backgroundColor : Colors.white,
      body: listScreens[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[400],
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: tabIndex,
          onTap: (int index) {
            setState(() {
              tabIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.report_problem),
              label: 'Call'
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed:()=> _incrementCounter('Yay! A SnackBar! For Chat'),
        tooltip: 'Increment',
        child: const Icon(Icons.chat),
      ),
    );
  }
}
