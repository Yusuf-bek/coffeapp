import 'package:coffeapp/screens/buyingpage.dart';
import 'package:flutter/material.dart';

class Openpage extends StatefulWidget {
  const Openpage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _OpenpageWidgetState();
}

class _OpenpageWidgetState extends State<Openpage> {
  List<Color> buttonTextColors = [
    Colors.white,
    Colors.brown.shade800,
    Colors.transparent
  ];

  int colorsIndexTextOne = 1;
  int colorsIndexConOne = 0;

  int colorsIndexTextTwo = 1;
  int colorsIndexConTwo = 0;

  int colorsIndexTextThree = 1;
  int colorsIndexConThree = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.brown.shade900,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.width * 1.1,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/cappucinopage.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Cappucino",
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      size: 40,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    "Drizzled with Caramel ",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 22,
                  ),
                  Text(
                    " 4.5",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "A single espresso shot poured into hot foamy milk with the surface topped whith mildfu sweetened cocoa powder and drizzled with scrumtious caramel sytrup...",
                style: TextStyle(fontSize: 18, color: Colors.white54),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Choice of Milk",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.width * 0.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: buttonTextColors[colorsIndexConOne],
                    ),
                    child: OutlinedButton(
                      onPressed: () {
                        if (colorsIndexTextOne == 0) {
                          colorsIndexTextOne = 1;
                          colorsIndexTextTwo = 0;
                          colorsIndexTextThree = 0;
                        } else {
                          colorsIndexTextOne = 0;
                          colorsIndexTextTwo = 0;
                          colorsIndexTextTwo = 0;
                        }

                        if (colorsIndexConOne == 0) {
                          colorsIndexConOne = 2;
                          colorsIndexConTwo = 2;
                          colorsIndexConThree = 2;
                        } else {
                          colorsIndexConOne = 0;
                          colorsIndexConTwo = 2;
                          colorsIndexConThree = 2;
                        }

                        setState(() {});
                      },
                      child: Text(
                        "Oat Milk",
                        style: TextStyle(
                            color: buttonTextColors[colorsIndexTextOne]),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.width * 0.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: buttonTextColors[colorsIndexConTwo],
                    ),
                    child: OutlinedButton(
                      onPressed: () {
                        if (colorsIndexTextTwo == 0) {
                          colorsIndexTextTwo = 1;
                          colorsIndexTextOne = 0;
                          colorsIndexTextThree = 0;
                        } else {
                          colorsIndexTextTwo = 0;
                          colorsIndexTextOne = 0;
                          colorsIndexTextThree = 0;
                        }

                        if (colorsIndexConTwo == 0) {
                          colorsIndexConTwo = 2;
                          colorsIndexConOne = 2;
                          colorsIndexConThree = 2;
                        } else {
                          colorsIndexConTwo = 0;
                          colorsIndexConOne = 2;
                          colorsIndexConThree = 2;
                        }

                        setState(() {});
                      },
                      child: Text(
                        "Soy Milk",
                        style: TextStyle(
                            color: buttonTextColors[colorsIndexTextTwo]),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.width * 0.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: buttonTextColors[colorsIndexConThree],
                    ),
                    child: OutlinedButton(
                      onPressed: () {
                        if (colorsIndexTextThree == 0) {
                          colorsIndexTextThree = 1;
                          colorsIndexTextOne = 0;
                          colorsIndexTextTwo = 0;
                        } else {
                          colorsIndexTextThree = 0;
                          colorsIndexTextOne = 0;
                          colorsIndexTextTwo = 0;
                        }

                        if (colorsIndexConThree == 0) {
                          colorsIndexConThree = 2;
                          colorsIndexConTwo = 2;
                          colorsIndexConOne = 2;
                        } else {
                          colorsIndexConThree = 0;
                          colorsIndexConTwo = 2;
                          colorsIndexConOne = 2;
                        }

                        setState(() {});
                      },
                      child: Text(
                        "Almond Milk",
                        style: TextStyle(
                            color: buttonTextColors[colorsIndexTextThree]),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        "Price",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "1\$",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.12,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      child: Text(
                        "BUY NOW",
                        style: TextStyle(color: Colors.brown.shade800),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const Cart(),
                          ),
                        );
                      },
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
