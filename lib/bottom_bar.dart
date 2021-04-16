import 'package:flutter/material.dart';
import 'file:///C:/Users/MONSTER/Desktop/flutteristas_conference/lib/page/agenda_page.dart';
import 'file:///C:/Users/MONSTER/Desktop/flutteristas_conference/lib/page/home_page.dart';
import 'file:///C:/Users/MONSTER/Desktop/flutteristas_conference/lib/page/speaker_page.dart';

class BottomBarPage extends StatefulWidget {
  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _currentIndex = 0;

  List<Widget> _tabs = <Widget>[
    HomePage(),
    SpeakerPage(),
    AgendaList(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _tabs.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        unselectedItemColor: Color(0xff383A90),
        unselectedFontSize: 12,
        backgroundColor: Color(0xffC1BBD7),
        fixedColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.assignment_ind), label: "Speaker"),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: "Agenda"),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTap,
      ),
    );
  }
}


