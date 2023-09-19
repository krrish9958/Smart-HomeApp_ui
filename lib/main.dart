import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SmartHomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SmartHomeScreen extends StatelessWidget {
  const SmartHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Hello, David!",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 24),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Welcome back home!",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 25,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.flash_on_outlined),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total energy expenses ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "This month",
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "Rs1000",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Favourite Scenes',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.amber[200],
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Rooms',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      RoomsScroll(
                        name: "Living Room",
                      ),
                      RoomsScroll(
                        name: "Kitchen",
                      ),
                      RoomsScroll(
                        name: "Bedroom",
                      ),
                      RoomsScroll(
                        name: "Washroom",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Quick Access",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22),
                      ),
                      Text(
                        "All Devices",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      BestSellerItems(
                        quickAccessName: "Living Room",
                        productPrice: "smart flower pot",
                      ),
                      BestSellerItems(
                        quickAccessName: "Speaker",
                        productPrice: "Rs400",
                      ),
                      BestSellerItems(
                        quickAccessName: "Hair Set",
                        productPrice: "Rs600",
                      ),
                      BestSellerItems(
                        quickAccessName: "Skin Set",
                        productPrice: "Rs800",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RoomsScroll extends StatelessWidget {
  final String name;
  const RoomsScroll({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          width: 100,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}

class BestSellerItems extends StatefulWidget {
  final String quickAccessName;
  final String productPrice;

  const BestSellerItems(
      {super.key, required this.quickAccessName, required this.productPrice});

  @override
  State<BestSellerItems> createState() => _BestSellerItemsState();
}

class _BestSellerItemsState extends State<BestSellerItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.lightGreenAccent[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.quickAccessName,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 22),
                      ),
                      Text(
                        widget.productPrice,
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
