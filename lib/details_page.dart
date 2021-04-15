import 'package:animation_test1/animations/fadeAnimations.dart';
import 'package:animation_test1/cart.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String image;
  final String tag;
  final String name;

  const DetailsPage(
      {Key key, @required this.image, @required this.tag, this.name})
      : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int sizeIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Hero(
              tag: widget.tag,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(widget.image)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 10,
                          color: Colors.grey.shade400,
                        )
                      ]),
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
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
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          width: MediaQuery.of(context).size.width,
                          height: 500,
                          child: FadeAnimation(
                            delay: .5,
                            child: (Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomRight,
                                      colors: [
                                    Colors.black.withOpacity(.9),
                                    Colors.black.withOpacity(.7),
                                    Colors.black.withOpacity(.0)
                                  ])),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  FadeAnimation(
                                    delay: .8,
                                    child: Text(
                                      widget.name,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FadeAnimation(
                                    delay: 1,
                                    child: Text(
                                      "Size",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      FadeAnimation(
                                          delay: 1.1,
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                sizeIndex = 1;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 500),
                                              curve: Curves.easeInOut,
                                              width: 40,
                                              height: 40,
                                              margin:
                                                  EdgeInsets.only(right: 20),
                                              decoration: BoxDecoration(
                                                  color: sizeIndex == 1
                                                      ? Colors.white
                                                      : Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Center(
                                                child: Text(
                                                  "38",
                                                  style: TextStyle(
                                                      color: sizeIndex == 1
                                                          ? Colors.black
                                                          : Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          )),
                                      FadeAnimation(
                                          delay: 1.1,
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                sizeIndex = 2;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 500),
                                              curve: Curves.easeInOut,
                                              width: 40,
                                              height: 40,
                                              margin:
                                                  EdgeInsets.only(right: 20),
                                              decoration: BoxDecoration(
                                                  color: sizeIndex == 2
                                                      ? Colors.white
                                                      : Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Center(
                                                child: Text(
                                                  "40",
                                                  style: TextStyle(
                                                      color: sizeIndex == 2
                                                          ? Colors.black
                                                          : Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          )),
                                      FadeAnimation(
                                          delay: 1.1,
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                sizeIndex = 3;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 500),
                                              curve: Curves.easeInOut,
                                              width: 40,
                                              height: 40,
                                              margin:
                                                  EdgeInsets.only(right: 20),
                                              decoration: BoxDecoration(
                                                  color: sizeIndex == 3
                                                      ? Colors.white
                                                      : Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Center(
                                                child: Text(
                                                  "44",
                                                  style: TextStyle(
                                                      color: sizeIndex == 3
                                                          ? Colors.black
                                                          : Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          )),
                                      FadeAnimation(
                                          delay: 1.1,
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                sizeIndex = 4;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 350),
                                              curve: Curves.easeInOut,
                                              width: 40,
                                              height: 40,
                                              margin:
                                                  EdgeInsets.only(right: 20),
                                              decoration: BoxDecoration(
                                                  color: sizeIndex == 4
                                                      ? Colors.white
                                                      : Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Center(
                                                child: Text(
                                                  "42",
                                                  style: TextStyle(
                                                      color: sizeIndex == 4
                                                          ? Colors.black
                                                          : Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          )),
                                      FadeAnimation(
                                          delay: 1.1,
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                sizeIndex = 5;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 350),
                                              curve: Curves.easeInOut,
                                              width: 40,
                                              height: 40,
                                              margin:
                                                  EdgeInsets.only(right: 20),
                                              decoration: BoxDecoration(
                                                  color: sizeIndex == 5
                                                      ? Colors.white
                                                      : Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Center(
                                                child: Text(
                                                  "46",
                                                  style: TextStyle(
                                                      color: sizeIndex == 5
                                                          ? Colors.black
                                                          : Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 60.0,
                                  ),
                                  FadeAnimation(
                                    delay: 1.2,
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Center(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: MaterialButton(
                                            height: 50,
                                            minWidth: double.infinity,
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Cart(
                                                            name: widget.name,
                                                            image: widget.image,
                                                            tag: widget.tag,
                                                          )));
                                            },
                                            child: Text(
                                              "Add to cart",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  )
                                ],
                              ),
                            )),
                          ))

                      //  Text(
                      //     "\$100",
                      //     style: TextStyle(
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 30),
                      //   ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
