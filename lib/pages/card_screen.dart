import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                urlImage: 'assets/paisajes/image1.jpg', texto: 'Arbol verde'),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                urlImage: 'assets/paisajes/image2.jpg', texto: 'Mar rosado'),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                urlImage: 'assets/paisajes/image3.jpg', texto: 'Bosque otoño'),
          ],
        ));
  }
}
