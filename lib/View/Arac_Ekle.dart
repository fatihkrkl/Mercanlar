import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Kargo_Sayfa.dart';

class AracListe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hehe"),
      ),
      body: Row(
          children:[
            ElevatedButton(onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => KargoSayfa()),
            ), child: Text("Kargo Ekle")),
            Text("dsadsa"),
          ]
      ),
    );
  }

}