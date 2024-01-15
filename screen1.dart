import 'package:flutter/material.dart';
import 'package:navigasi/screen2.dart';

class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hijau,
        title: Text("ini belajar navigasi"
      ),
      ),
      body: Column(children: [
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              height:200 ,
              width: 200,
              child: ElevatedButton(
                child: Text('masuk ke screen 2'),
        onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return screen2();
        }
        ),
        );
        },
        ),
              ),
            
          ],
        )
      ],)
      // Center(child: ElevatedButton(
      //   child: Text('masuk ke screen 2'),
      //   onPressed: (){
      //   Navigator.push(context, MaterialPageRoute(builder: (context){
      //     return screen2();
      //   }
      //   ),
      //   );
      //   },
      //   ),
      //   ),
    );
  }
}
