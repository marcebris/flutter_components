import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String urlImage;
  final String? texto;

  const CustomCardType2({
    super.key, 
    required this.urlImage, 
    this.texto,    
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 30,
        shadowColor: AppTheme.primary.withOpacity(0.5),
        child: Column(
          children: [
             FadeInImage(
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: AssetImage(urlImage), //('assets/paisajes/image1.jpg'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(microseconds: 3000),
            ),
            if(texto != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(texto!))
          ],
        ));
  }
}
