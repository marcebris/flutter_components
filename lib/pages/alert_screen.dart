import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

void displayDialogIOS(BuildContext context){
  showCupertinoDialog(
    barrierDismissible: false,
    context: context,
     builder: (context){
      return CupertinoAlertDialog(
        title: const Text('Título'),
        content:  Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Ipsum amet amet eu consectetur est do.'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar', style: TextStyle(color: Colors.red))
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok')
              )
            ],
      );
     }
     );


}

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){
        return AlertDialog(
          elevation: 5,
          title: const Text('titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(25)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Ipsum amet amet eu consectetur est do.'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ],
            ),
            actions: [
             TextButton(
                onPressed: () { },
                child: const Text('Aceptar'),
                ),
                 TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar'),
                )
            ],
        );
      }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              //onPressed: () => displayDialogIOS(context),
              onPressed: () => !Platform.isAndroid
              ? displayDialogAndroid(context)
              : displayDialogIOS(context),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text(
                  'Mostrar alerta',
                  style: TextStyle(fontSize: 20),
                ),
              ))),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
