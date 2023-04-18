import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Desserts(),
    debugShowCheckedModeBanner: false,
  ));
}

class Desserts extends StatelessWidget {
  const Desserts({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 7),
                  width: 167,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    // color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 225, 224, 224)
                            .withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/choux a la creme.jpeg",
                            width: 155,
                            height: 130,
                          ),
                        ),
                        const Text(
                          "Cream Puffs",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "100DH",
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "myfont",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 7),
                  width: 167,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    // color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 225, 224, 224)
                            .withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/Un gâteau végan au chocolat.jpeg",
                            // width: 335,
                            height: 130,
                          ),
                        ),
                        const Text(
                          "Chocolate Cake",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "100DH",
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "myfont",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            //SECOND
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 7),
                  width: 169,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    // color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 225, 224, 224)
                            .withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            "assets/images/Une mousse aux fruits rouges.jpeg",
                            width: 155,
                            height: 130,
                          ),
                        ),
                        const Text(
                          "Red Fruit Mousse",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "100DH",
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "myfont",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 7),
                  width: 167,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    // color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 225, 224, 224)
                            .withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/Une tarte au citron meringuée.jpeg",
                            width: 165,
                            height: 130,
                          ),
                        ),
                        const Text(
                          "Lemon Pie",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "100DH",
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "myfont",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            //THIRD
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 7),
                  width: 169,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    // color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 225, 224, 224)
                            .withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/Tiramisu traditionnel.jpeg",
                            // width: 155,
                            height: 115,
                          ),
                        ),
                        const Text(
                          "Tiramisu ",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "100DH",
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "myfont",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 7),
                  width: 167,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    // color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 225, 224, 224)
                            .withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/NOUGAT GLACÉ AUX FRUITS SECS.jpeg",
                            width: 165,
                            height: 130,
                          ),
                        ),
                        const Text(
                          "Frozen Nougat",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "100DH",
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "myfont",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            //FOURTH
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 7),
                  width: 169,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    // color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 225, 224, 224)
                            .withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/MOUSSE AU CHOCOLAT.jpeg",
                            width: 155,
                            height: 130,
                          ),
                        ),
                        const Text(
                          "Chocolate Mousse",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "100DH",
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "myfont",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 7),
                  width: 167,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    // color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 225, 224, 224)
                            .withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/RIZ AU LAIT.jpeg",
                            width: 155,
                            height: 130,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          "Milk Rice ",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        const Text(
                          "100DH",
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "myfont",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    ));
  }
}
