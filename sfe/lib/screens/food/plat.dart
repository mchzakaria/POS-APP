import 'package:flutter/material.dart';
import 'package:sfe/screens/item.dart';

List<List<String>> data = [
  // ['URL', 'NAME' ,'PRICE'],
  ["assets/images/burgerwh.jpg", "Chicken Burger", "100 DH"],
  ["assets/images/pizza.jpeg", "salami Pizza", "100 DH"],
  [
    "assets/images/Bavettes à l'échalote.jpg",
    "Bavettes à l'échalote",
    "100 DH"
  ],
  ["assets/images/lasagna.jpg", "Lasagna", "100 DH"],
  ["assets/images/spageti.jpg", "Spaghetti ", "100 DH"],
  ["assets/images/taco.jpg", "Americano Taco", "100 DH"],
  ["assets/images/suchi.jpg", "Sushi Plate ", "100 DH"],
  [
    "assets/images/grilled fish and potatoes.jpg",
    "Grilled Fish & Potatoes",
    "100 DH"
  ],
  [
    "assets/images/Leftover Turkey and Ham Pie.jpg",
    "Leftover Turkey & Ham Pie",
    "100 DH"
  ],
  ["assets/images/Tandoori Chicken.jpeg", "Tandoori Chicken", "100 DH"],
  ["assets/images/chikentagine.jpg", "Chiken Tagine", "100 DH"],
  ["assets/images/rfissa.jpeg", " Moroccan Rfissa ", "100 DH"],
  // [ "100 DH"],[ "100 DH"],
];

class Plat extends StatelessWidget {
  const Plat({super.key});

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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => item(data[0]),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            data[0][0],
                            width: 155,
                            height: 130,
                          ),
                        ),
                        Text(
                          data[0][1],
                          style: const TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          data[0][2],
                          style: const TextStyle(
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => item(data[1]),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            data[1][0],
                            width: 165,
                            height: 120,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          data[1][1],
                          style: const TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          data[1][2],
                          style: const TextStyle(
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => item(data[2]),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            data[2][0],
                            width: 155,
                            height: 130,
                          ),
                        ),
                        Text(
                          data[2][1],
                          style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          data[2][2],
                          style: const TextStyle(
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => item(data[3]),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            data[3][0],
                            width: 165,
                            height: 130,
                          ),
                        ),
                        Text(
                          data[3][1],
                          style: const TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          data[3][2],
                          style: const TextStyle(
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => item(data[4]),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            data[4][0],
                            width: 155,
                            height: 130,
                          ),
                        ),
                        Text(
                          data[4][1],
                          style: const TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          data[4][2],
                          style: const TextStyle(
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => item(data[5]),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            data[5][0],
                            width: 165,
                            height: 130,
                          ),
                        ),
                        Text(
                          data[5][1],
                          style: const TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          data[5][2],
                          style: const TextStyle(
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => item(data[6]),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            data[6][0],
                            width: 155,
                            height: 130,
                          ),
                        ),
                        Text(
                          data[6][1],
                          style: const TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          data[6][2],
                          style: const TextStyle(
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => item(data[7]),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            data[7][0],
                            width: 155,
                            height: 130,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          data[7][1],
                          style: const TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Text(
                          data[7][2],
                          style: const TextStyle(
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
            //fifth
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 7),
                  width: 169,
                  height: 210,
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => item(data[8]),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            data[8][0],
                            width: 165,
                            height: 130,
                          ),
                        ),
                        Text(
                          data[8][1],
                          style: const TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          data[8][2],
                          style: const TextStyle(
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => item(data[9]),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            data[9][0],
                            // width: 250,
                            height: 140,
                          ),
                        ),
                        Text(
                          data[9][1],
                          style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          data[9][2],
                          style: const TextStyle(
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
            //sixth
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 7),
                  width: 169,
                  height: 220,
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => item(data[10]),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            data[10][0],
                            width: 165,
                            height: 130,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          data[10][1],
                          style: const TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          data[10][2],
                          style: const TextStyle(
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
                  height: 220,
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => item(data[11]),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            data[11][0],
                            // width: 250,
                            height: 120,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          data[11][1],
                          style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          data[11][2],
                          style: const TextStyle(
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
