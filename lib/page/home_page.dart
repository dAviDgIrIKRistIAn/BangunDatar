import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.blue.shade300,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: CustomMenu(title: "Persegi", imageAsset: "asset/Persegi.png",)),
                Expanded(child: CustomMenu(title: "lingkaran", imageAsset: "asset/lingkaran.png",))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: CustomMenu(title: "segitiga", imageAsset: "asset/Segitiga.jpg",)),
                Expanded(child: CustomMenu(title: "persegi panjang", imageAsset: "asset/Persegi Panjang.png",))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.title, required this.imageAsset
  });
  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.blue.shade300,
          //Border.all
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ), //BorderRadius.all),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageAsset),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title, style: TextStyle(color: Color(0xFFFFFFFF)),),
            ),
          ],
        ));
  }
}
