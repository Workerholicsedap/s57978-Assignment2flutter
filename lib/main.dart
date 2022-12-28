/*Name : Muhammad Afiq Bin Alusrizan
 * Matric no : S57978
 * Decripstion of task : Using 2 different dart file and try to connect them by using navigation push . 
 */
import 'package:flutter/material.dart';
import 'package:transition/jawapan.dart'; //import data daripada jawapan.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override //make material app as a topmost widget in a widget tree
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'VILLAINS'), //tajuk
    );
  } //tamat untuk material app , app di bahagian atas
}

class MyHomePage extends StatefulWidget {
  //guna stateful widget disebabkan berlakunya perubahan pada widget(widget tak perlu statik)
  //
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late var _selectedJawapan; //declare object selected jawapan , so apabila set state dipanggil . dia sudah wujud
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState

    return Scaffold(
      //mempunyai ruang antara app dan bar bawah

      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true, //nak bagi supaya tulisan ketengah
      ),

      body: Container(
        //guna containr supaya boleh setting gambar untuk background belakang
        alignment: Alignment
            .center, //nak bagi container tu di tengah walaupun dah tengah2
        decoration: BoxDecoration(
          //memenuhi ruang nak buat backgground belakang
          image: DecorationImage(
            image: AssetImage("assets/latar.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          //kita nak buat button dia kebawah
          children: <Widget>[
            Text('What is your favourite villain?',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 30)), //ubah warna , dan saiz tulisan
            ElevatedButton(
              child: Text('Dark Vader'),
              onPressed: () {
                //apabila ditekan , dia akan executed setstate
                setState(() {
                  //panggil semula setstate di mana kit declare _selectedJawapan
                  _selectedJawapan = 'Dark Vader';
                });
                Navigator.push(
                  //mengarahkan/membawa ke screen selanjutnya
                  context, //taktau apa function context ni
                  MaterialPageRoute(
                    //untuk bawak value dark vader ke jawapan .dart
                    builder: (context) => Jawapan(
                      //merujuk kepada class jawapan.dart
                      jawapan:
                          _selectedJawapan, //jawapan yang asalnya null , diisi dengan data baru ialah dark cader
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Thanos'),
              onPressed: () {
                setState(() {
                  _selectedJawapan = 'Thanos';
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Jawapan(jawapan: _selectedJawapan),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Joker'),
              onPressed: () {
                setState(() {
                  _selectedJawapan = 'Joker';
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Jawapan(jawapan: _selectedJawapan),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Megatron'),
              onPressed: () {
                setState(() {
                  _selectedJawapan = 'Megatron';
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Jawapan(jawapan: _selectedJawapan),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
