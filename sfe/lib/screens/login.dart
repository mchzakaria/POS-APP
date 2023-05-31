// ignore_for_file: use_build_context_synchronously

import 'package:sfe/Admin/Hw.dart';
import 'package:sfe/screens/tables.dart';
import 'package:sfe/widgets/widget.dart';
import 'package:http/http.dart' as http;

var myid, na1me, na2me, fullname;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  bool _obscureText = true;

  @override
  void dispose() {
    usernamecontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  // Future<void> checkuser() async {
  //   if (usernamecontroller.text != "" || passwordcontroller.text != "") {
  //     try {
  //       String uri =
  //           "http://localhost:4433/phpscript/check_user_before_login.php";
  //       var response = await http.post(Uri.parse(uri), body: {
  //         "username": usernamecontroller.text,
  //         "password": passwordcontroller.text,
  //       });
  //       if (response.statusCode == 200) {
  //         print(response.body);
  //         print((response.body).runtimeType);
  //         final trimmedResponse = response.body.trim();
  //         print(trimmedResponse.runtimeType);
  //         print(trimmedResponse);
  //         if (trimmedResponse == 'Admin') {
  //           Navigator.pushAndRemoveUntil(
  //             context,
  //             MaterialPageRoute(builder: (context) => const AdminPage()),
  //             (route) => false,
  //           );
  //         } else if (trimmedResponse == 'Not Admin') {
  //           Navigator.pushAndRemoveUntil(
  //             context,
  //             MaterialPageRoute(builder: (context) => const Tables()),
  //             (route) => false,
  //           );
  //         } else {
  //           showDialog(
  //             context: context,
  //             builder: (BuildContext context) {
  //               return AlertDialog(
  //                 title: const Text('Error'),
  //                 content: const Text('Invalid username or password'),
  //                 actions: [
  //                   TextButton(
  //                     child: const Text('OK'),
  //                     onPressed: () {
  //                       Navigator.of(context).pop();
  //                     },
  //                   ),
  //                 ],
  //               );
  //             },
  //           );
  //         }
  //       } else {
  //         throw Exception('Failed to login');
  //       }
  //     } catch (e) {
  //       print(e);
  //     }
  //   } else {
  //     print(" Please Enter Data ");
  //   }
  // }

  Future<void> checkuser() async {
    List userdata = [];
    List<String> rowList = [];
    if (usernamecontroller.text != "" || passwordcontroller.text != "") {
      try {
        String uri =
            "http://localhost:4433/POS-APP/sfe/lib/PHP/check_user_before_login.php";
        var response = await http.post(Uri.parse(uri), body: {
          "username": usernamecontroller.text,
          "password": passwordcontroller.text,
        });
        setState(() {
          userdata = jsonDecode(response.body);
        });
        rowList.add(userdata[0]['uid']);
        rowList.add(userdata[0]['job']);
        rowList.add(userdata[0]['first_name']);
        rowList.add(userdata[0]['last_name']);
        rowList.add(userdata[0]['full_name']);
        // print(rowList);
        if (rowList[1] == 'Admin') {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const AdminPage()),
            (route) => false,
          );
          myid = rowList[0];
          na1me = rowList[2];
          na2me = rowList[3];
          fullname = rowList[4];
        } else if (rowList[1] == 'Serveur') {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const Tables()),
            (route) => false,
          );
          myid = rowList[0];
          na1me = rowList[2];
          na2me = rowList[3];
          fullname = rowList[4];
        } else {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Error'),
                content: const Text('Invalid username or password'),
                actions: [
                  TextButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        }
      } catch (e) {
        print(e);
      }
    } else {
      print(" Please Enter Data ");
    }
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
                      const SizedBox(height: 65),
                      const Text("Login",
                          style: TextStyle(fontSize: 33, fontFamily: "myfont")),
                      const SizedBox(height: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(120),
                        child: Image.asset(
                          "assets/images/logo.jpg",
                          width: 270,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Email TextField
                      Container(
                        width: 266,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          controller: usernamecontroller,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.grey[800],
                              ),
                              hintText: "Email :",
                              border: InputBorder.none),
                        ),
                      ),

                      const SizedBox(height: 23),

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

                      // // Forget Password
                      // Container(
                      //   padding: EdgeInsets.only(left: 160, top: 6),
                      //   child: GestureDetector(
                      //       onTap: () {
                      //         Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //                 builder: (context) => ForgotPassword()));
                      //       },
                      //       child: const Text(
                      //         "Forgot Your Password?",
                      //         style: TextStyle(
                      //             fontSize: 12,
                      //             color: Color.fromARGB(255, 156, 154, 154),
                      //             fontWeight: FontWeight.bold),
                      //       )),
                      // ),

                      const SizedBox(height: 15),

                      // Button Login
                      ElevatedButton(
                        onPressed: () {
                          checkuser();
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 245, 153, 66)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 17)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child:
                            const Text("Login", style: TextStyle(fontSize: 22)),
                      ),

                      const SizedBox(height: 17),
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
