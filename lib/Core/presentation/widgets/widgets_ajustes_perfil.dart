import 'package:flutter/material.dart';

class Estructura extends StatelessWidget {
  const Estructura({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Row(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 40, 3),
                width: 60.0,
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.0),
                  color:const Color(0xFF16697A),
                ),
                child: const Icon(Icons.arrow_back_rounded, size: 25,color: Colors.white,),
              ),
              const Text('Profile Settings', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),)
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
            padding: const EdgeInsets.all(5.0),
            child: const Text('Informacion de Perfil', style: TextStyle(fontSize: 16,color: Color(0xff878787))),
          ),
          SizedBox(
            width: 150,
            height: 150,
            child: ClipOval(
              child: Image.network(
                  'https://tecolotito.elsiglodedurango.com.mx/cdn-cgi/image/format=auto,width=1024/i/2023/04/1166288.jpeg'),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [const Text('Informacion Personal', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),), Container(child: datosUser(),)],
            ),
          )
        ],
      ),
    );
  }
}


Widget datosUser(){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration:  BoxDecoration(
            color: const Color(0xffF4F4F4),
            borderRadius: BorderRadius.circular(15.0)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Numero de cuenta', style: TextStyle(color: Color(0xff878787), fontSize: 12),),
              Text('3024982387',style: TextStyle(color: Color(0xff878787), fontSize: 12))
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration:  BoxDecoration(
            color: const Color(0xffF4F4F4),
            borderRadius: BorderRadius.circular(15.0)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Usuario', style: TextStyle(color: Color(0xff878787), fontSize: 12),),
              Text('Aryan.Stirk2',style: TextStyle(color: Color(0xff878787), fontSize: 12))
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration:  BoxDecoration(
            color: const Color(0xffF4F4F4),
            borderRadius: BorderRadius.circular(15.0)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Email', style: TextStyle(color: Color(0xff878787), fontSize: 12),),
              Text('aryan.stirk2nd@gmail.com',style: TextStyle(color: Color(0xff878787), fontSize: 12))
            ],
          ),
        ),
        const SizedBox(height: 10,),
         Container(
          padding: const EdgeInsets.all(10.0),
          decoration:  BoxDecoration(
            color: const Color(0xffF4F4F4),
            borderRadius: BorderRadius.circular(15.0)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Telefono', style: TextStyle(color: Color(0xff878787), fontSize: 12),),
              Text('+620932938232',style: TextStyle(color: Color(0xff878787), fontSize: 12))
            ],
          ),
        ),
        const SizedBox(height: 10,),
         Container(
          padding: const EdgeInsets.all(10.0),
          decoration:  BoxDecoration(
            color: const Color(0xffF4F4F4),
            borderRadius: BorderRadius.circular(15.0)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Direccion', style: TextStyle(color: Color(0xff878787), fontSize: 12),),
              Text('Gotham Road 21...',style: TextStyle(color: Color(0xff878787), fontSize: 12))
            ],
          ),
        ),
      ],
    ),
  );
}