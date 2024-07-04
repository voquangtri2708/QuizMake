// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: const HomePage(),
//       theme: ThemeData(
//         useMaterial3: true,
//       ),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   HomePageState createState() => HomePageState();
// }
//
// class HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;
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
//         title: const Text('Trang chủ'),
//         leading: const Icon(Icons.menu),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: 'Tìm kiếm',
//                 prefixIcon: const Icon(Icons.search),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ChoiceChip(label: Text('Tất cả'), selected: false),
//                 ChoiceChip(label: Text('Trắc nghiệm'), selected: true),
//                 ChoiceChip(label: Text('Thẻ ghi nhớ'), selected: false),
//               ],
//             ),
//           ),
//           Expanded(
//             child: GridView.builder(
//               padding: const EdgeInsets.all(8.0),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: 3/2,
//                 mainAxisSpacing: 10,
//                 crossAxisSpacing: 10,
//               ),
//               itemCount: 6,
//               itemBuilder: (context, index) {
//                 return Card(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Expanded(
//                         // child: Image.network('https://via.placeholder.com/150', fit: BoxFit.cover),
//                         child: Image.asset('asset/images/img1.jpg', fit: BoxFit.cover)
//
//                       ),
//                       const Padding(padding: EdgeInsets.all(8.0),child: Text('Ôn tập CS 403'),                      ),
//                       const Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),child: Text('30 Thẻ'),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//
//
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Trang chủ',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Tìm kiếm',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.brightness_6),
//             label: 'Dark Mode',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Cài đặt',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quiz_make/screens/welcome/welcome_screen.dart';
import 'test/testcaseQuiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: WelcomeScreen(),
    );
  }
}
