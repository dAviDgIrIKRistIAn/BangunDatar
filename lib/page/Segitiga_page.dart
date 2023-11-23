import 'package:bangun_datar_kelas_c/Controller/Segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({Key? key}) : super(key: key);
  final SegitigaController _segitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segitiga Page"),
      ),
      body: Column(
        children: [
          Image.asset(
              "asset/Segitiga.jpg"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Segitiga"),
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
                "Segitiga merupakan bangun datar yang dibatasi dengan adanya tiga buah sisi serta memiliki tiga buah titik sudut. Kemudian untuk alas dari segitiga adalah satu dari sisi suatu bangun segitiga.",
                style: TextStyle(color: Color(0xFFFFFFFF)),)
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(color: Color(0xFF64B5F6),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Column(
                children: [
                  //ALAS
                  SizedBox(
                    width: 200,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: TextFormField(
                        onChanged: (value) {
                          _segitigaController.alas = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "alas",
                          hintText: "Masukkan alas",
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
                  //TINGGI
                  SizedBox(
                    width: 200,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: TextFormField(
                        onChanged: (value) {
                          _segitigaController.tinggi = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "tinggi",
                          hintText: "Masukkan tinggi",
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
                        _segitigaController.hitungKeliling();
                      }, child: Text("Hitung Keliling"), style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        onPrimary: Colors.white,
                      ),),
                      SizedBox(width: 16),
                      ElevatedButton(onPressed: () {
                        _segitigaController.hitungLuas();
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
                  Obx(() => Text(_segitigaController.hasil.value, textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16)))
                ],
              )
          )
        ],
      ),
    );

  }
}
