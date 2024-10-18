import 'package:flutter/material.dart';

class KargoSayfa extends StatelessWidget{
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Araç Sayfası'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 100,
                child: Kargo(items[index]),
              );
            },
          )
          ,
        ),
      ),
    );
  }
  Widget Kargo(data){
    return TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Adjust border radius
            side: BorderSide(
              color: Colors.blue, // Set border color
              width: 2, // Set border width
            ),
          ),
        ),
        onPressed: () =>(),
        child: Row(
          children: [
            Expanded(child: Text("Tip")),
            Expanded(child: Text("Evrak")),
            Expanded(child: Text("Tarih")),
            Expanded(child: Text("CariNo")),
            Expanded(child: Text("Unvan")),
            Expanded(child: Text("Resim")),
            Expanded(child: Text("İmza")),
            Expanded(child: Text("Teslim Tarihi")),
            Expanded(child: Text("Teslim Alan")),
            Expanded(child: Text("İşlem")),
          ],
        )
    );
  }
}