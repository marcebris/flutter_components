import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: Colors.orange[900],
            child: const Text('SL'),
          ),
        )
      ],
      title: const Text('Stan Lee'),),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: AssetImage('assets/stan-lee.jpg'),
         )
      ),
    );
  }
}