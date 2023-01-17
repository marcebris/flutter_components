import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
   final libros = const['Misery', 'Drácula', 'Salem lot', 'Carrie', 'Maleficio', 'It', 'Insomnia', 'Cujo'];
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview 2')
        ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile( 
            title: Text( libros[index] ),
            trailing: const Icon( 
              Icons.arrow_forward_ios,
              color: Colors.brown),
            onTap: () {
              final lib = libros[index];
              print(lib);
            },
            ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: libros.length)
    );
  }
}