import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: ListView(
            children: [
              Text("Result = ", style: const TextStyle(fontSize: 50)),
              textFormField( "Masukkan Angka Pertama"),
              textFormField( "Masukkan Angka Kedua"),
              buttonAritmatika( "Penjumlahan", Colors.black12),
              buttonAritmatika( "Pengurangan", Colors.black12),
              buttonAritmatika( "Perkalian", Colors.black12),
              buttonAritmatika("Pembagian", Colors.black12),
            ],
          ),
        ),
      ),
    );
  }

  Widget textFormField(String labelText) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }

  Widget buttonAritmatika(String namaButton, Color color) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      height: 75,
      child: ElevatedButton(
        onPressed: null,
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(namaButton)),
    );
  }
}