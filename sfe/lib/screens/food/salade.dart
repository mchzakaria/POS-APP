import 'package:sfe/widgets/widget.dart';

List<List<String>> data = [
  // ['URL', 'PRICE'],
  ["assets/images/Salade César au poulet.jpeg", " Caesar salad  ", "100 DH"],
  ["assets/images/Salade composée au thon.jpeg", "Salad with Tuna ", "100 DH"],
  [
    "assets/images/Salade de betteraves et œufs durs.jpeg",
    " Beet salad & eggs",
    "100 DH"
  ],
  [
    "assets/images/Salade de roquette aux figues et aux poires.jpeg",
    " Arugula salad ",
    "100 DH"
  ],
  ["assets/images/salade necoise.jpeg", " Nicoise salad ", "100 DH"],
  ["assets/images/Salade Waldorf facile.jpg", " Waldorf Salad ", "100 DH"],
];

class Salade extends StatelessWidget {
  const Salade({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              const SizedBox(height: 14),
              Container(
                width: 187,
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
              const SizedBox(height: 14),
              Container(
                width: 187,
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

              const SizedBox(height: 14),
              //SECOND
              Container(
                width: 187,
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
              const SizedBox(height: 14),
              Container(
                width: 187,
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

              const SizedBox(height: 14),
              //THIRD

              Container(
                width: 187,
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
                          width: 175,
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
              const SizedBox(height: 14),
              Container(
                width: 187,
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

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    ));
  }
}
