import 'package:flutter/material.dart';
import 'package:stack_food/bottomBar.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: StackFood()));
}

class StackFood extends StatefulWidget {
  const StackFood({Key? key}) : super(key: key);

  @override
  _StackFoodState createState() => _StackFoodState();
}

class _StackFoodState extends State<StackFood> {
  int _selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          '76A eighth avenue, New York, US',
          style: TextStyle(color: Colors.black26, fontSize: 15),
        ),
        leading: Icon(
          Icons.home_filled,
          color: Colors.black26,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: BottomBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {},
        child: Icon(Icons.shopping_cart_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
