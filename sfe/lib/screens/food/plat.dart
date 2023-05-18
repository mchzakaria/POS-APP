import 'package:sfe/widgets/widget.dart';
import 'package:http/http.dart' as http;

class Plat extends StatefulWidget {
  const Plat({super.key});

  @override
  State<Plat> createState() => _PlatState();
}

class _PlatState extends State<Plat> {
  List userdata = [];
  List<List<String>> Plat = [];
  Future<void> getrecord() async {
   String uri = "http://localhost:4433/phpscript/final.php";
    try {
      var response = await http.post(Uri.parse(uri),body: {"type":"Plat"});
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

        Plat.add(rowList);
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
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: Plat.length,
            itemBuilder: (context, index) {
              return Container(
                height: 213,
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
                    id_article = int.parse(Plat[index][4]);
                    print(id_article);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => item(Plat[index]),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          Plat[index][0],
                          width: 155,
                          height: 130,
                        ),
                      ),
                      Text(
                        Plat[index][1],
                        style: const TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 66, 66, 66),
                            fontWeight: FontWeight.bold,
                            fontFamily: "myfont"),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        Plat[index][2],
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
