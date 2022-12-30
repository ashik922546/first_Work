import 'package:flutter/material.dart';

class CatagoryPage extends StatefulWidget {
  const CatagoryPage({super.key});

  @override
  State<CatagoryPage> createState() => _CatagoryPageState();
}

class _CatagoryPageState extends State<CatagoryPage> {
  int selectedIndex = 0;
  final List<String> catagoryList = [
    "Messages",
    "Online",
    "Groups",
    "Requests"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.0,
      color: Colors.deepOrange,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagoryList.length,
        itemBuilder: (context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Text(
                catagoryList[index],
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color:
                        index == selectedIndex ? Colors.white : Colors.white60,
                    letterSpacing: 1.2),
              ),
            ),
          );
        },
      ),
    );
  }
}
