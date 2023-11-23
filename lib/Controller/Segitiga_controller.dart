import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas = 0;
  int tinggi = 0;
  final hasil = "".obs;

  void hitungLuas(){
    var hitung = alas*tinggi*0.5;
    hasil.value = "hasil luas dari sisi $alas adalah $hitung";

  }

  void hitungKeliling(){
    num hitung = alas * 4;
    hasil.value = "hasil keliling dari sisi $tinggi adalah $hitung";
  }
}