import 'package:deneme/View/Arac_Ekle.dart';
import 'package:flutter/material.dart';

class AracSayfa extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Araç Sayfası'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AracEkle()),
                    );
                    // Action for Button 1
                    print('Button 1 Pressed');
                  },
                  child: Text('Yeni'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Action for Button 2
                    print('Button 2 Pressed');
                  },
                  child: Text('Listele'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Action for Button 3
                    print('Button 3 Pressed');
                  },
                  child: Text('Filtre'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 100,
                    child: Card(
                      elevation: 4,
                      child: Center(
                        child: Kargo(items[index]),
                      ),
                    ),
                  );
                },
              )
              ,
            ),
          ],
        ),
      ),
    );
  }
  Widget Kargo(data){
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(data, style: TextStyle(fontSize: 18))
    );
  }
}

