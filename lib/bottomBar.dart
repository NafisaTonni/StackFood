import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
    );
  }

  Widget navItems({required int items, required Icon icon}) {
    return IconButton(onPressed: () {}, icon: icon);
  }
}
