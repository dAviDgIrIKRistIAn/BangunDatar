import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil = "".obs;

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "hasil luas dari sisi $sisi adalah $hitung";
  }

  void hitungKeliling(){
    int hitung = sisi * 4;
    hasil.value = "hasil keliling dari sisi $sisi adalah $hitung";
  }
}