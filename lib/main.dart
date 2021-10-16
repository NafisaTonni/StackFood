import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: StackFood()));
}

class StackFood extends StatefulWidget {
  const StackFood({Key? key}) : super(key: key);

  @override
  _StackFoodState createState() => _StackFoodState();
}

class _StackFoodState extends State<StackFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          '76A eighth avenue, New York, US',
          style: TextStyle(color: Colors.black26, fontSize: 13),
        ),
        leading: Icon(
          Icons.home_filled,
          color: Colors.black26,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              navItems(items: 0, icon: Icon(Icons.home_filled)),
              navItems(items: 1, icon: Icon(Icons.favorite)),
              SizedBox(
                width: 20,
              ),
              navItems(items: 2, icon: Icon(Icons.bookmark)),
              navItems(items: 3, icon: Icon(Icons.menu_rounded))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {},
        child: Icon(Icons.shopping_cart_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
          child: Column(
            children: [
              Material(
                borderRadius: BorderRadius.circular(5),
                elevation: 8,
                child: Container(
                  //color: Colors.white,
                  height: 45,
                  width: 350,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration.collapsed(
                                hintText: 'Search food or restaurant here...',
                                hintStyle: TextStyle(
                                    fontSize: 13, color: Colors.black26)),
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search_rounded,
                              color: Colors.black26,
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget navItems({required int items, required Icon icon}) {
    return IconButton(onPressed: () {}, icon: icon);
  }
}
