
import 'package:flutter/material.dart';
import 'package:fl_components/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            leading: Icon
              (
                Icons.photo_album_outlined,
                color: AppTheme.primary
              ),
            title: Text('Soy un título'),
            subtitle: Text('Nostrud cillum mollit cupidatat ipsum ex anim labore sit nisi cillum nulla.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed:() {}, 
                  child: const Text('Cancel')
                  ),
                   TextButton(
                  onPressed:() {}, 
                  child: const Text('Ok')
                  )
              ],
              ),
          )
        ]
        ),
    );
  }
}