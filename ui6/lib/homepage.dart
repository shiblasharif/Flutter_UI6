import 'package:flutter/material.dart';

import 'items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _controller;

  final List<Tab> topTabs = <Tab>[
    const Tab(text: 'Products'),
    const Tab(text: 'Catogories'),
  ];
  @override
  void initState() {
    super.initState();

    _controller = TabController(
      vsync: this,
      length: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Container(
            padding: EdgeInsets.only(left: 15),
            child: const Center(
              child: Text(
                'Catalogue',
                style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.search,
              ),
            ),
          ],
          bottom: TabBar(
            controller: _controller,
            tabs: topTabs,
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            ListView(
              children: [
                products("assets/images/pic1.jpg", "Watch | Women", "₹4999"),
                products("assets/images/pic2.jpg", "Shoes | Men", "₹1999"),
                products(
                    "assets/images/pic3.jpeg", "Sling Bag | Women", "₹599"),
                products("assets/images/pic1.jpg", "Watch | Women", "₹4999"),
                products("assets/images/pic2.jpg", "Shoes | Men", "₹1999"),
              ],
            ),
            Container(),
          ],
        ));
  }
}
