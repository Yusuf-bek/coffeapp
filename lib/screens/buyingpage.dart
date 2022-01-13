import 'package:flutter/material.dart';
 
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<Cart> {
  int cappuccinoCounter = 1;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.brown.shade900,
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  "Cart",
                  style: TextStyle(fontSize: 30, color: Colors.white70),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return cappucinoSelectedReturner();
                  },
                  itemCount: 3,
                ),
              ),
              const Text(
                "- - - - - - - - - - - - - - - - - - - - - -",
                style: TextStyle(fontSize: 30),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.width * 0.12,
                color: Colors.blueGrey[800],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Apply Coupon Code               ",
                      style: TextStyle(color: Colors.white70),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Delivery Charges",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  Text(
                    "${cappuccinoCounter * 0.3}\$",
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Taxes",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  Text(
                    "${cappuccinoCounter * 0.4}\$",
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              const Text(
                "- - - - - - - - - - - - - - - - - - - - - -",
                style: TextStyle(fontSize: 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Grand Total",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    "${cappuccinoCounter * 1.7}\$",
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.width * 0.13,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "PAY NOW",
                  style: TextStyle(fontSize: 18, color: Colors.brown[800]),
                )),
              ),
            ],
          ),
        ),
      );

  cappucinoSelectedReturner() {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blueGrey[700],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.25,
              width: MediaQuery.of(context).size.width * 0.23,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/cappucino1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Cappuccino",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
                const Text(
                  "Dalgona Macha",
                  style: TextStyle(fontSize: 14, color: Colors.white60),
                ),
                Text(
                  "${cappuccinoCounter * 1.5}\$",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(),
            Center(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.09,
                    height: MediaQuery.of(context).size.width * 0.09,
                    child: IconButton(
                      onPressed: () {
                        if (cappuccinoCounter != 1) {
                          cappuccinoCounter -= 1;
                        }
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 22,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: MediaQuery.of(context).size.width * 0.065,
                    color: Colors.brown[200],
                    child: Center(
                      child: Text(
                        "$cappuccinoCounter",
                        style:
                            const TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.09,
                    height: MediaQuery.of(context).size.width * 0.09,
                    child: IconButton(
                      onPressed: () {
                        cappuccinoCounter += 1;
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 22,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
