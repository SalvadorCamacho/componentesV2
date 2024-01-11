import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: const Text('Avatar Page'),
         centerTitle: true,
         actions: <Widget>[
           Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: const CircleAvatar(
               backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/hosting-7020d.appspot.com/o/cara.jpg?alt=media&token=c1687529-21a0-402a-867d-d76febf330c5'),
              ),
           ),
            const CircleAvatar(
            backgroundColor: Colors.amberAccent,
            child: Text('SC')
            ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                  Radius.circular(10.0)), //add border radius here
              child: Image.asset('assets/android.jpg'), //add image location here
            ),
          ),
         ],
       ),
       body: const Center(
          child: FadeInImage(
            //cargar una imagen o gif mientras de internet carga la principal
            placeholder: AssetImage('assets/jar-loading.gif'),
            //Imagen principal que se carga de internet
            image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/hosting-7020d.appspot.com/o/cara.jpg?alt=media&token=c1687529-21a0-402a-867d-d76febf330c5'),
              fadeInDuration: Duration(milliseconds: 50), //50 milisegundos
              height: 300.0, //altura
              fit: BoxFit.cover, //Para que se expanda
            ),
       ),
    );

  }
}