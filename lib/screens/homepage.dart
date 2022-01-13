import 'package:coffeapp/screens/buyingpage.dart';
import 'package:coffeapp/screens/openpage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<Homepage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.brown.shade900,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.width * 0.35,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Text(
                            "deja",
                            style: TextStyle(
                                fontSize: 40, color: Colors.red.shade100),
                          ),
                          top: 32,
                          left: 10,
                        ),
                        const Positioned(
                          child: Text(
                            "Brew",
                            style: TextStyle(fontSize: 45, color: Colors.white),
                          ),
                          top: 67,
                          left: 13,
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.yellow[100],
                    radius: 33,
                    child: CircleAvatar(
                      backgroundColor: Colors.brown[700],
                      radius: 30,
                      child: CircleAvatar(
                        radius: 27,
                        backgroundColor: Colors.yellow[100],
                        backgroundImage:
                            const AssetImage("assets/images/brofour.jpg"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              height: MediaQuery.of(context).size.width * 0.13,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 35,
                  ),
                  Text(
                    "   Browse your favourite coffee...                 ",
                    style: TextStyle(color: Colors.white54, fontSize: 17),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                RotatedBox(
                  quarterTurns: 3,
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.1,
                    width: MediaQuery.of(context).size.width * 1.3,
                    child: const Center(
                      child: Text(
                        "Flat White       Espresso      Americano      Latte      Cappuccino",
                        style: TextStyle(fontSize: 16, color: Colors.white54),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.brown.shade800,
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(90))),
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.621,
                    child: customScrollReturnerStuff()),
              ],
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFF8F1EB),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 14,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.home_filled,
                        size: 50,
                        color: Colors.white60,
                      ),
                    ),
                    const SizedBox(
                      width: 54,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (context) => const Cart(),
                            ));
                      },
                      icon: const Icon(
                        Icons.shopping_cart_rounded,
                        size: 50,
                        color: Colors.white30,
                      ),
                    ),
                    const SizedBox(
                      width: 54,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        size: 50,
                        color: Colors.white30,
                      ),
                    ),
                    const SizedBox(
                      width: 54,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        size: 50,
                        color: Colors.white30,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  CustomScrollView customScrollReturnerStuff() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => Openpage(),
                    ),
                  );
                },
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.blueGrey[700]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.33,
                          height: MediaQuery.of(context).size.width * 0.33,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/cappucino1.jpg"),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.cyan,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Cinnamon & Cocoa",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.width * 0.09,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                color: Colors.blueGrey,
                              ),
                              child: const Center(
                                child: Text(
                                  "45\$",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white70),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.12,
                              height: MediaQuery.of(context).size.width * 0.12,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }, childCount: 6),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 300),
        ),
      ],
    );
  }
}
