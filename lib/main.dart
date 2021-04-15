import 'package:animation_test1/animations/fadeAnimations.dart';
import 'package:animation_test1/details_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<Map<String, String>> dataList = [
    {
      "imageLink": "assets/images/one.jpg",
      "tag": "one",
      "name": "Jordan Sneakers"
    },
    {
      "imageLink": "assets/images/two.jpg",
      "tag": "two",
      "name": "Black Sneakers"
    },
    {
      "imageLink": "assets/images/three.jpg",
      "tag": "three",
      "name": "Victoria's Hill"
    },
    {
      "imageLink": "assets/images/four.jpg",
      "tag": "four",
      "name": "Jordan Sneakers"
    },
    {
      "imageLink": "assets/images/five.jpg",
      "tag": "five",
      "name": "Air Jordan"
    },
    {
      "imageLink": "assets/images/six.jpg",
      "tag": "six",
      "name": "Nike Sneakers"
    },
    {
      "imageLink": "assets/images/seven.jpg",
      "tag": "seven",
      "name": "Nike Sneakers White"
    },
    {"imageLink": "assets/images/eight.jpg", "tag": "eight", "name": "LV Toms"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: null,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
        title: Text(
          "Shoes",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          //color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Sneakers",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          //color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Football",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          //color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Soccer",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          //color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Golf",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    return buidItem(
                        image: dataList[index]['imageLink'],
                        tag: dataList[index]['tag'],
                        name: dataList[index]['name'],
                        context: context);
                  }),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget buidItem(
      {String image = "assets/images/one.jpg",
      @required String tag,
      @required String name,
      @required BuildContext context}) {
    return Material(
      child: Hero(
          tag: tag,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsPage(
                            image: image,
                            tag: tag,
                            name: name,
                          )));
            },
            child: Container(
              height: 250,
              margin: EdgeInsets.only(bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(image)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 10,
                    color: Colors.grey.shade400,
                  )
                ],
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.6),
                          Colors.black.withOpacity(.0)
                        ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FadeAnimation(
                              delay: .5,
                              child: Text(
                                name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FadeAnimation(
                              delay: .8,
                              child: Text(
                                "Nike",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ],
                        )),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite_border,
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                    FadeAnimation(
                      delay: 1,
                      child: Text(
                        "\$100",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
