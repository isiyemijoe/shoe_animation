import 'package:flutter/material.dart';

import 'animations/slideAnimation.dart';

class Cart extends StatefulWidget {
  final String image;
  final String name;
  final String price;
  final String tag;

  const Cart({Key key, this.image, this.name, this.price, this.tag})
      : super(key: key);
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
        title: Text(
          "Order Summary",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: widget.tag,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                  widget.image,
                                ),
                                fit: BoxFit.cover),
                            color: Colors.grey.shade300),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SlideAnimations(
                            delay: .5,
                            child: Text(
                              widget.name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SlideAnimations(
                            delay: .6,
                            child: Text(
                              "Nike",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SlideAnimations(
                            delay: .7,
                            child: Text(
                              "Size: 44",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SlideAnimations(
                            delay: .8,
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.grey.shade400)),
                                      child: InkWell(
                                        splashColor: Colors.blue,
                                        onTap: () {
                                          if (itemCount == 0) return;
                                          setState(() {
                                            itemCount--;
                                          });
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          size: 16,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  itemCount.toString(),
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.grey.shade400)),
                                      child: InkWell(
                                        splashColor: Colors.blue,
                                        onTap: () {
                                          itemCount++;
                                          setState(() {
                                            itemCount++;
                                          });
                                        },
                                        child: Icon(
                                          Icons.add,
                                          size: 16,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            SlideAnimations(
              delay: .7,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Delivery Location",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SlideAnimations(
                      delay: .8,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200),
                        child: Icon(
                          Icons.pin_drop_rounded,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          SlideAnimations(
                            delay: .9,
                            child: Text(
                              "No 49, Alhaji Basheer St. Magodo",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SlideAnimations(
                            delay: 1,
                            child: Text(
                              "103101, Lagos",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey.shade500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SlideAnimations(
                      delay: 1.1,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Colors.grey.shade500,
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            SlideAnimations(
              delay: .8,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Payment Method",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SlideAnimations(
                      delay: .9,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200),
                        child: Icon(
                          Icons.card_membership,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          SlideAnimations(
                            delay: 1,
                            child: Text(
                              "Debit Mastercard",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SlideAnimations(
                            delay: 1.1,
                            child: Text(
                              "****5455",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey.shade500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SlideAnimations(
                      delay: 1.2,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Colors.grey.shade500,
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            SlideAnimations(
              delay: .9,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Order Details",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SlideAnimations(
              delay: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade600),
                        ),
                        Text(
                          "\$100",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tax",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade600),
                        ),
                        Text(
                          "\$20",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shippind fee",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade600),
                        ),
                        Text(
                          "\$30",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade600),
                        ),
                        Text(
                          "\$200",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: Container()),
            SlideAnimations(
              delay: 1,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.blue, Colors.green]),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: MaterialButton(
                      height: 50,
                      minWidth: double.infinity,
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             Cart(
                        //               name: widget.name,
                        //               image: widget.image,
                        //               tag: widget.tag,
                        //             )));
                      },
                      child: Text(
                        "Order",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
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
      ),
    );
  }
}
