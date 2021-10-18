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
  List<Map> menu = [
    {'id': '1', 'option': 'All'},
    {'id': '2', 'option': 'Take Away'},
    {'id': '3', 'option': 'Home Delivery'}
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
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(
            Icons.home_filled,
            color: Colors.black26,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.notification_add_rounded,
              color: Colors.black,
            ),
          )
        ],
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Center(
              child: Material(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                elevation: 8,
                child: Container(
                  height: 45,
                  width: 350,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
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
            SizedBox(
              height: 20,
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
                          color: Colors.white,
                          elevation: 10,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.all(5),
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
                          color: Colors.white,
                          elevation: 10,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.all(5),
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
                          color: Colors.white,
                          elevation: 10,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.all(5),
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
                            color: Colors.white,
                            elevation: 10,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              margin: EdgeInsets.all(5),
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
                          color: Colors.white,
                          elevation: 10,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.all(5),
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
                          color: Colors.white,
                          elevation: 10,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.all(5),
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
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Food Nearby',
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
                    Stack(
                      children: [
                        Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          elevation: 10,
                          child: Container(
                            height: 90,
                            width: 220,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Container(
                                    height: 67,
                                    width: 67,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/popular/burger.jpg'))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Burger',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Mc Donald, New York, USA',
                                          style: TextStyle(fontSize: 9),
                                        ),
                                        Image.asset(
                                          'assets/5star.png',
                                          height: 25,
                                          width: 55,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'S5',
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 80,
                                            ),
                                            Container(
                                                height: 15,
                                                width: 15,
                                                child: Icon(Icons.add))
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 25,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green[400],
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(3),
                                    bottomRight: Radius.circular(3))),
                            height: 15,
                            width: 25,
                            child: Center(
                              child: Text(
                                '30% off',
                                style: TextStyle(
                                  fontSize: 5,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      elevation: 10,
                      child: Container(
                        height: 90,
                        width: 220,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                height: 67,
                                width: 67,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/popular/pasta.jpg'))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pasta',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Mc Donald, New York, USA',
                                      style: TextStyle(fontSize: 9),
                                    ),
                                    Image.asset(
                                      'assets/5star.png',
                                      height: 25,
                                      width: 55,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'S5',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 80,
                                        ),
                                        Container(
                                            height: 15,
                                            width: 15,
                                            child: Icon(Icons.add))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      elevation: 10,
                      child: Container(
                        height: 90,
                        width: 220,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                height: 67,
                                width: 67,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/popular/pizza.jpg'))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pizza',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Mc Donald, New York, USA',
                                      style: TextStyle(fontSize: 9),
                                    ),
                                    Image.asset(
                                      'assets/5star.png',
                                      height: 25,
                                      width: 55,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'S5',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 80,
                                        ),
                                        Container(
                                            height: 15,
                                            width: 15,
                                            child: Icon(Icons.add))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Food Campaign',
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
                    Material(
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black26)),
                        height: 245,
                        width: 165,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 147,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/campaign/special1.jpg'))),
                              ),
                              Container(
                                margin: EdgeInsets.all(7),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Food',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Mc Donald, New York, USA',
                                        style: TextStyle(fontSize: 9)),
                                    Image.asset(
                                      'assets/5star.png',
                                      height: 25,
                                      width: 55,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'S5',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                            height: 15,
                                            width: 15,
                                            child: Icon(Icons.add))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Material(
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black26)),
                        height: 245,
                        width: 165,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 147,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/campaign/special2.jpg'))),
                              ),
                              Container(
                                margin: EdgeInsets.all(7),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Food',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Mc Donald, New York, USA',
                                        style: TextStyle(fontSize: 9)),
                                    Image.asset(
                                      'assets/5star.png',
                                      height: 25,
                                      width: 55,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'S5',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                            height: 15,
                                            width: 15,
                                            child: Icon(Icons.add))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Material(
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black26)),
                        height: 245,
                        width: 165,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 147,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/campaign/special3.jpg'))),
                              ),
                              Container(
                                margin: EdgeInsets.all(7),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Food',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Mc Donald, New York, USA',
                                        style: TextStyle(fontSize: 9)),
                                    Image.asset(
                                      'assets/5star.png',
                                      height: 25,
                                      width: 55,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'S5',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                            height: 15,
                                            width: 15,
                                            child: Icon(Icons.add))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Restaurants',
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
              padding: EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 10,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Container(
                            height: 225,
                            width: 300,
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 145,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/restaurants/rest1.jpg'))),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(7),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hungry Puppets',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text('76A eight avenue, New York, USA',
                                            style: TextStyle(fontSize: 9)),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/5star.png',
                                              height: 25,
                                              width: 55,
                                            ),
                                            Text('(2)',
                                                style: TextStyle(fontSize: 9)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 25,
                            left: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green[400],
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(3),
                                      bottomRight: Radius.circular(3))),
                              height: 15,
                              width: 25,
                              child: Center(
                                child: Text(
                                  '30% off',
                                  style: TextStyle(
                                    fontSize: 5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 10,
                      color: Colors.white,
                      child: Container(
                        height: 225,
                        width: 300,
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                height: 145,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/restaurants/rest2.jpg'))),
                              ),
                              Container(
                                margin: EdgeInsets.all(7),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hungry Puppets',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('76A eight avenue, New York, USA',
                                        style: TextStyle(fontSize: 9)),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/5star.png',
                                          height: 25,
                                          width: 55,
                                        ),
                                        Text('(2)',
                                            style: TextStyle(fontSize: 9)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New on App Name',
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
              padding: EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 10,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Container(
                            height: 225,
                            width: 300,
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 145,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/new/new1.jpg'))),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(7),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hungry Puppets',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text('76A eight avenue, New York, USA',
                                            style: TextStyle(fontSize: 9)),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/5star.png',
                                              height: 25,
                                              width: 55,
                                            ),
                                            Text('(2)',
                                                style: TextStyle(fontSize: 9)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 25,
                            left: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green[400],
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(3),
                                      bottomRight: Radius.circular(3))),
                              height: 15,
                              width: 50,
                              child: Center(
                                child: Text(
                                  'Free Delivery',
                                  style: TextStyle(
                                    fontSize: 5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 10,
                      color: Colors.white,
                      child: Container(
                        height: 225,
                        width: 300,
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                height: 145,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/new/new2.jpg'))),
                              ),
                              Container(
                                margin: EdgeInsets.all(7),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hungry Puppets',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('76A eight avenue, New York, USA',
                                        style: TextStyle(fontSize: 9)),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/5star.png',
                                          height: 25,
                                          width: 55,
                                        ),
                                        Text('(2)',
                                            style: TextStyle(fontSize: 9)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'All Restaurants',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '200+ Near You',
                        style: TextStyle(fontSize: 9),
                      ),
                    ],
                  ),
                  PopupMenuButton<int>(
                    itemBuilder: (context) => [
                      PopupMenuItem(child: Text('All')),
                      PopupMenuDivider(),
                      PopupMenuItem(child: Text('Take Away')),
                      PopupMenuDivider(),
                      PopupMenuItem(child: Text('Home Delivery')),
                    ],
                    child: Icon(Icons.miscellaneous_services_rounded),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 69,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('assets/all/mc.jpg'))),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mc Donald's",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('American cuisine,',
                              style: TextStyle(fontSize: 9)),
                          Text('fast food', style: TextStyle(fontSize: 9)),
                          Image.asset(
                            'assets/5star.png',
                            height: 25,
                            width: 55,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite_border_rounded),
                        color: Colors.grey,
                        onPressed: () {},
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 69,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('assets/all/star.jpg'))),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Starbucks",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('American cuisine,',
                              style: TextStyle(fontSize: 9)),
                          Text('fast food', style: TextStyle(fontSize: 9)),
                          Image.asset(
                            'assets/5star.png',
                            height: 25,
                            width: 55,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 115,
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite_border_rounded),
                        color: Colors.grey,
                        onPressed: () {},
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Container(
                              height: 69,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage('assets/all/dom.jpg'))),
                            ),
                            Positioned(
                              top: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green[400],
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(3),
                                        bottomRight: Radius.circular(3))),
                                height: 15,
                                width: 25,
                                child: Center(
                                  child: Text(
                                    '30% off',
                                    style: TextStyle(
                                      fontSize: 5,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dominos",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('American cuisine,',
                              style: TextStyle(fontSize: 9)),
                          Text('fast food', style: TextStyle(fontSize: 9)),
                          Image.asset(
                            'assets/5star.png',
                            height: 25,
                            width: 55,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 115,
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite_border_rounded),
                        color: Colors.grey,
                        onPressed: () {},
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Container(
                              height: 69,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage('assets/all/dom.jpg'))),
                            ),
                            Positioned(
                              top: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green[400],
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(3),
                                        bottomRight: Radius.circular(3))),
                                height: 15,
                                width: 25,
                                child: Center(
                                  child: Text(
                                    '30% off',
                                    style: TextStyle(
                                      fontSize: 5,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dominos",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('American cuisine,',
                              style: TextStyle(fontSize: 9)),
                          Text('fast food', style: TextStyle(fontSize: 9)),
                          Image.asset(
                            'assets/5star.png',
                            height: 25,
                            width: 55,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 115,
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite_border_rounded),
                        color: Colors.grey,
                        onPressed: () {},
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
