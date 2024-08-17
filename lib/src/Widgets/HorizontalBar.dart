import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class HoverExpandList extends StatefulWidget {
  const HoverExpandList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HoverExpandListState createState() => _HoverExpandListState();
}

class _HoverExpandListState extends State<HoverExpandList> {
  int _expandedIndex = -1;
  final List<String> _items = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Hover Expand List')),
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return MouseRegion(
              onEnter: (event) {
                setState(() {
                  _expandedIndex = index;
                });
              },
              onExit: (event) {
                setState(() {
                  _expandedIndex = -1;
                });
              },
              child: GestureDetector(
                onTap: () {
                  print('Item tapped: ${_items[index]}');
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: _expandedIndex == index ? 100 : 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      if (_expandedIndex == index)
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            _items[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      Expanded(
                        child: Container(
                          color: Colors.grey,
                          child: const Center(child: Icon(Icons.image)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HoverExpandList(),
  ));
}


