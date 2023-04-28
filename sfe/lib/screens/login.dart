import 'package:sfe/screens/tables.dart';
import 'package:sfe/widgets/widget.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  bool _obscureText = true;
  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Center(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 65,
                      ),
                      const Text(
                        "Login",
                        style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(120),
                          child: Image.asset(
                            "assets/images/logo.jpg",
                            width: 270,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      // Email TextField
                      Container(
                        width: 266,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          controller: emailcontroller,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.grey[800],
                              ),
                              hintText: "Email :",
                              border: InputBorder.none),
                        ),
                      ),

                      const SizedBox(
                        height: 23,
                      ),

                      // Password TextField
                      Container(
                        width: 266,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          controller: passwordcontroller,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: Icon(
                                  _obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey[800],
                                ),
                              ),
                              icon: Icon(
                                Icons.lock,
                                color: Colors.grey[800],
                                size: 19,
                              ),
                              hintText: "Password :",
                              border: InputBorder.none),
                        ),
                      ),

                      // Forget Password
                      Container(
                        padding: EdgeInsets.only(left: 160, top: 6),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgotPassword()));
                            },
                            child: const Text(
                              "Forgot Your Password?",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 156, 154, 154),
                                  fontWeight: FontWeight.bold),
                            )),
                      ),

                      const SizedBox(
                        height: 12,
                      ),

                      // Button Login
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tables()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 245, 153, 66)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 17)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),

                      const SizedBox(
                        height: 17,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    )));
  }
}
