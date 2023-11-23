import 'package:bangun_datar_kelas_c/Controller/Persegi_panjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({Key? key}) : super(key: key);
  final PersegiPanjangController _PersegiPanjangController = Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Panjang Page"),
      ),
      body: Column(
        children: [
          Image.asset(
              "asset/Persegi Panjang.png"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Persegi Panjang"),
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Color(0xFF64B5F6), //Border.all
                borderRadius: BorderRadius.circular(10
                ), //BorderRadius.all),
              ),
              child: Text(
                "Persegi panjang (bahasa Inggris: rectangle) adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku.",
                style: TextStyle(color: Color(0xFFFFFFFF)),)
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(color: Color(0xFF64B5F6),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: TextFormField(
                        onChanged: (value) {
                          _PersegiPanjangController.panjang = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "panjang",
                          hintText: "Masukkan panjang",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 200,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: TextFormField(
                        onChanged: (value) {
                          _PersegiPanjangController.lebar = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "lebar",
                          hintText: "Masukkan lebar",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: () {
                        _PersegiPanjangController.hitungKeliling();
                      }, child: Text("Hitung Keliling"), style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        onPrimary: Colors.white,
                      ),),
                      SizedBox(width: 16),
                      ElevatedButton(onPressed: () {
                        _PersegiPanjangController.hitungLuas();
                      },  child: Text("Hitung Luas"), style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        onPrimary: Colors.white,
                      )),
                    ],
                  )),
                ],
              )
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(color: Color(0xFF64B5F6),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              width: 10000000,
              height: 200,
              child: Column(
                children: [
                  Text("Hasil :", style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
                  Obx(() => Text(_PersegiPanjangController.hasil.value, textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16)))
                ],
              )
          )
        ],
      ),
    );

  }
}
