import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:position/pages/HomePage.dart';
import 'package:position/pages/MessagePage.dart';
import 'package:position/pages/MyPage.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> tabBodies = [
    HomePage(),
    MessagePage(),
    MyPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('求人Demo'),
      // ),
      body: Center(
        child: tabBodies.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ポジション',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.speaker_notes),
            label: 'メッセージ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'マイ',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}

/// This is the main application widget.
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }
//
// /// This is the stateful widget that the main application instantiates.
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// /// This is the private State class that goes with MyStatefulWidget.
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//   TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//
//   final List<Widget> tabBodies = [
//     HomePage(),
//     HomePage(),
//     HomePage(),
//     // CategoryPage(),
//     // CartPage(),
//     // MemberPage()
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BottomNavigationBar Sample'),
//       ),
//       body: Center(
//         child: tabBodies.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'ポジション',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.article),
//             label: 'Business',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'School',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.teal,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
