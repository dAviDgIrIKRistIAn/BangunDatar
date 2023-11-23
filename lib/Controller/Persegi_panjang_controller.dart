import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int panjang = 0;
  int lebar = 0;
  final hasil = "".obs;

  void hitungLuas(){
    int hitung = panjang*lebar;
    hasil.value = "hasil luas dari sisi $panjang adalah $hitung";
  }

  void hitungKeliling(){
    int hitung = 2*(panjang*lebar);
    hasil.value = "hasil keliling dari sisi $lebar adalah $hitung";
  }
}