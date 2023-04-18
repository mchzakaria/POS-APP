import 'package:flutter/material.dart';
import 'package:sfe/screens/login.dart';


/////////// The First Page //////////////////////////////
class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // make the app bar background transparent
        elevation: 0.0,
        actions: [
          GestureDetector(
            child: const Text(
              "Skip",
              style: TextStyle(color: Colors.black, fontSize: 21),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
          ),
        ],
      ),
      body: Container(
        height: 740,
        width: double.infinity,
        // color: Colors.green,
        child: Container(
          child: Column(
            children: [
              Image.asset("assets/images/chef.jpg"),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "We Have Quality Chief",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 9,
              ),
              const Text(
                "Just a few click to enter our reservation app to get the best services and we maintained quality",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

/////////// The Seconde Page //////////////////////////////

class Welcome2 extends StatelessWidget {
  const Welcome2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // make the app bar background transparent
        elevation: 0.0,
        actions: [
          GestureDetector(
            child: const Text(
              "Skip",
              style: TextStyle(color: Colors.black, fontSize: 21),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
          ),
        ],
      ),
      body: Container(
        height: 740,
        width: double.infinity,
        // color: Colors.green,
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              Image.asset(
                "assets/images/serv.png",
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Order Your Food ",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 9,
              ),
              const Text(
                "Just a few click to enter our reservation app to get the best services and we maintained quality",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

/////////// The Third Page //////////////////////////////

class Welcome3 extends StatelessWidget {
  const Welcome3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          GestureDetector(
            child: const Text(
              "Skip",
              style: TextStyle(color: Colors.black, fontSize: 21),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
          ),
        ],
      ),
      body: Container(
        height: 740,
        width: double.infinity,
        child: Container(
          child: Column(
            children: [
              Image.asset("assets/images/food.jpg"),
              const SizedBox(
                height: 30,
              ),
              const Text(
                " Enjoy Delicious food ",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 9,
              ),
              const Text(
                "Just a few click to enter our reservation app to get the best services and we maintained quality",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 135,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                      },
                      icon: Image.asset(
                        "assets/icons/next.png",
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
