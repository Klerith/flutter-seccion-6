import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only( right: 5),
            child: CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.indigo[900]
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           maxRadius: 110,
           backgroundImage: NetworkImage('https://i.blogs.es/85aa44/stan-lee/840_560.jpg'),
         )
      ),
    );
  }
}