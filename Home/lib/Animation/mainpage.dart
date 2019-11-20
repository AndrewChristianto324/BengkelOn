import 'package:flutter/material.dart';
import 'package:Bengkel/Animation/Home.dart';
import 'package:Bengkel/Animation/ListDetail.dart';


class MainPage extends StatefulWidget {

  static const routeName = '/MainPage';

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  List<Widget> _layoutPage = [
    HomePage(),
    ListBengkel(),
  ];

  void _onItemTapped(int index) {
    setState(() {
     selectedIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _layoutPage.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.directions_car),
          title: Text('mobil'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.motorcycle),
          title: Text('motor'),
        ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.greenAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}