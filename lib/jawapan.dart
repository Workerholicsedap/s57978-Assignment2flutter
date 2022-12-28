import 'package:flutter/material.dart';

class Jawapan extends StatelessWidget {
  final String jawapan;

  Jawapan({required this.jawapan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VILLIANS'),
      ),
      body: Container(
        //untuk setting background gambar di belakang kena pakai widget container
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/latar2.png"),
            fit: BoxFit.cover, //bagi gambar memenuhi ruang
          ),
        ),
        child: Center(
          child: Text('You favourite Villian is $jawapan',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 20)),
        ),
      ),
    );
  }
}
