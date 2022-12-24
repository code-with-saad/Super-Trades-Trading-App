// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:supertrades/screens/fifthscreen.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  product() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => FifthScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: const Color(0xff0F2F44),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 18),
            child: GNav(
                backgroundColor: Color(0xff0F2F44),
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Color(0xff653FB2),
                gap: 8,
                padding: EdgeInsets.all(16),
                tabs: [
                  GButton(icon: Icons.home_filled, text: "Home"),
                  GButton(icon: Icons.search, text: "Search"),
                  GButton(
                    icon: Icons.bookmark_border_rounded,
                    text: "BookMarks",
                  ),
                  GButton(
                    icon: Icons.person,
                    text: "Profile",
                  ),
                ]),
          ),
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const ListTile(
            title: Text(
              "Location",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            subtitle: Text(
              "Los Angeles, CA",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            trailing: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Discover Best",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Suitable Property",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FourthScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(15, 46, 67, 1),
                      ),
                      child: const Text(
                        "House",
                        style: TextStyle(color: Colors.white),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        product();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(234, 241, 255, 1),
                      ),
                      child: const Text(
                        "Apartement",
                        style: TextStyle(color: Color.fromRGBO(15, 46, 67, 1)),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        product();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(234, 241, 255, 1),
                      ),
                      child: const Text(
                        "Flat",
                        style: TextStyle(color: Color.fromRGBO(15, 46, 67, 1)),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        product();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(234, 241, 255, 1),
                      ),
                      child: const Text(
                        "Bungalow",
                        style: TextStyle(color: Color.fromRGBO(15, 46, 67, 1)),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        product();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(234, 241, 255, 1),
                      ),
                      child: const Text(
                        "PentHouse",
                        style: TextStyle(color: Color.fromRGBO(15, 46, 67, 1)),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        product();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(234, 241, 255, 1),
                      ),
                      child: const Text(
                        "FarmHouse",
                        style: TextStyle(color: Color.fromRGBO(15, 46, 67, 1)),
                      )),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Best for you",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Stack(
                children: [
                  const SizedBox(
                    height: 300,
                    width: 300,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(40.0),
                          ),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQInB2W5wmlQ777h8dQE0SUnsscPxQLdJLL3-LCYIj9Pdv2fChA-h4OeiKIMW_rG-fD490&usqp=CAU"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 90,
                      width: 300,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(40.0),
                        ),
                        color: Color.fromRGBO(15, 46, 67, 1),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 5),
                            child: Text(
                              "CRAFTSMAN HOUSE",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              "520 N Btoudry Ave Los Angeles",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.bed_rounded,
                                  color: Color.fromARGB(255, 233, 214, 44),
                                ),
                                Text(
                                  "4 Beds",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.bathtub,
                                  color: Color.fromARGB(255, 233, 214, 44),
                                ),
                                Text(
                                  "4 Baths",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.garage_rounded,
                                  color: Color.fromARGB(255, 233, 214, 44),
                                ),
                                Text(
                                  "1 Garage",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Nearby your location",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
              child: Container(
            width: 355,
            height: 135,
            decoration: const BoxDecoration(
                color: Color(0xffEAF1FF),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Stack(
              children: [
                Positioned(
                    child: Container(
                  width: 130,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbs1azERWx8RawApKCB21IqHS__wr-OWnzdw&usqp=CAU"),
                        fit: BoxFit.fitHeight),
                  ),
                )),
                Positioned(
                    left: 129,
                    top: 35,
                    child: Container(
                      child: Column(
                        children: [
                          const Text(
                            "Ranch Home",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "520 N Btoudry Ave Los Angeles",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: const [
                              Icon(Icons.bed,
                                  color: Color.fromARGB(255, 218, 199, 28)),
                              Text("4 Beds"),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(Icons.bathtub,
                                  color: Color.fromARGB(255, 218, 199, 28)),
                              Text("4 Baths"),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(Icons.garage_rounded,
                                  color: Color.fromARGB(255, 218, 199, 28)),
                              Text("1 Garage")
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            ),
          )),
        ])));
  }
}
