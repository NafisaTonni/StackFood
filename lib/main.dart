import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: StackFood()));
}

class StackFood extends StatefulWidget {
  @override
  _StackFoodState createState() => _StackFoodState();
}

class _StackFoodState extends State<StackFood> {
  final List<String> images = [
    'assets/carousel1.JPG',
    'assets/carousel2.JPG',
    'assets/carousel3.JPG'
  ];
  final List<String> cats = [
    'assets/cats/cat1.png',
    'assets/cats/cat2.png',
    'assets/cats/cat3.png',
    'assets/cats/cat4.png',
    'assets/cats/cat5.png',
    'assets/cats/cat6.png'
  ];
  int activeindeX = 0;
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
              IconButton(onPressed: () {}, icon: Icon(Icons.home_filled)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
              SizedBox(
                width: 20,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark)),
              IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded))
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
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
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
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider.builder(
                    itemCount: images.length,
                    itemBuilder: (context, index1, index2) {
                      final image = images[index1];
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(image), fit: BoxFit.cover)),
                      );
                    },
                    options: CarouselOptions(
                      height: 80,
                      onPageChanged: (index, reason) =>
                          setState(() => activeindeX = index),
                      viewportFraction: 0.8,
                      autoPlay: true,
                      enableInfiniteScroll: true,
                    )),
                SizedBox(
                  height: 8,
                ),
                AnimatedSmoothIndicator(
                    effect: ScrollingDotsEffect(
                        dotHeight: 8,
                        dotWidth: 7,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.orange),
                    activeIndex: activeindeX,
                    count: images.length)
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    child: Text(
                      'View All',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.orange,
                          decoration: TextDecoration.underline),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.all(5),
                            color: Colors.white,
                            height: 45,
                            width: 45,
                            child: Image(
                              image: AssetImage('assets/cats/cat1.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'All',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.all(5),
                            color: Colors.white,
                            height: 45,
                            width: 45,
                            child: Image(
                              image: AssetImage('assets/cats/cat2.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Coffee',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.all(5),
                            color: Colors.white,
                            height: 45,
                            width: 45,
                            child: Image(
                              image: AssetImage('assets/cats/cat3.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Drink',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Material(
                            elevation: 10,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              color: Colors.white,
                              height: 45,
                              width: 45,
                              child: Image(
                                image: AssetImage('assets/cats/cat4.png'),
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Fast Food',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.all(5),
                            color: Colors.white,
                            height: 45,
                            width: 45,
                            child: Image(
                              image: AssetImage('assets/cats/cat5.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Cake',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.all(5),
                            color: Colors.white,
                            height: 45,
                            width: 45,
                            child: Image(
                              image: AssetImage('assets/cats/cat6.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Sushi',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
