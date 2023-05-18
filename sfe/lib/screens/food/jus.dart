import 'package:sfe/widgets/widget.dart';
import 'package:http/http.dart' as http;


class Jus extends StatefulWidget {
  const Jus({super.key});

  @override
  State<Jus> createState() => _JusState();
}

class _JusState extends State<Jus> {
  List userdata = [];
  List<List<String>> Jus = [];
  Future<void> getrecord() async {
   String uri = "http://localhost:4433/phpscript/final.php";
    try {
      var response = await http.post(Uri.parse(uri),body: {"type":"Jus"});
      setState(() {
        userdata = jsonDecode(response.body);
      });

      for (var i = 0; i < userdata.length; i++) {
        List<String> rowList = [];

        rowList.add(userdata[i]['url']);
        rowList.add(userdata[i]['name']);
        rowList.add(userdata[i]['price']);
        rowList.add(userdata[i]['type']);
        rowList.add(userdata[i]['uid']);

        Jus.add(rowList);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    getrecord();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: Jus.length,
            itemBuilder: (context, index) {
              
              return Container(
                height: 200,
                margin: const EdgeInsets.only(
                    bottom: 10, left: 30, right: 30, top: 10),
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
                    id_article = int.parse(Jus[index][4]);
                    print(id_article);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => item(Jus[index]),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          Jus[index][0],
                          width: 155,
                          height: 130,
                        ),
                      ),
                      Text(
                        Jus[index][1],
                        style: const TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 66, 66, 66),
                            fontWeight: FontWeight.bold,
                            fontFamily: "myfont"),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        Jus[index][2],
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
              );
            }),
      ),
    );
  }
}