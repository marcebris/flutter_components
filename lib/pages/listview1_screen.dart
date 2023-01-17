import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
   final libros = const['Misery', 'Drácula', 'Salem lot', 'Carrie'];
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview 1')
        ),
      body: ListView(
        children: [

         ...libros.map(
          (libro) => ListTile( 
            title: Text( libro ),
            trailing: const Icon( Icons.arrow_forward_ios),
            )
          ).toList()
        
        ],
        )
    );
  }
}