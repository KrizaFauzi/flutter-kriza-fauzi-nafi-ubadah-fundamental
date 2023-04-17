import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double result = 0;
  var formKey = GlobalKey<FormState>();
  var angka1 = TextEditingController();
  var angka2 = TextEditingController();

  void penjumlahan() {
    setState(() {
        result = double.parse(angka1.text) + double.parse(angka2.text);
    });
  }

  void pengurangan() {
    setState(() {
        result = double.parse(angka1.text) - double.parse(angka2.text);
    });
  }

  void perkalian() {
    setState(() {
        result = double.parse(angka1.text) * double.parse(angka2.text);
    });
  }

  void pembagian() {
    setState(() {
        result = double.parse(angka1.text) / double.parse(angka2.text);
    });
  }

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
          key: formKey,
          child: ListView(
            children: [
              Text("Hasil = $result", style: const TextStyle(fontSize: 50)),
              textFormField(angka1, "Masukkan Angka Pertama"),
              textFormField(angka2, "Masukkan Angka Kedua"),
              buttonAritmatika(penjumlahan, "Penjumlahan", Colors.black12),
              buttonAritmatika(pengurangan, "Pengurangan", Colors.black12),
              buttonAritmatika(perkalian, "Perkalian", Colors.black12),
              buttonAritmatika(pembagian, "Pembagian", Colors.black12),
            ],
          ),
        ),
      ),
    );
  }

  Widget textFormField(TextEditingController controller, String labelText) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Mohon Masukkan Angka';
          }
          return null;
        },
        decoration: InputDecoration(
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }

  Widget buttonAritmatika(VoidCallback onPressed, String namaButton, Color color) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      height: 75,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(namaButton)),
    );
  }
}