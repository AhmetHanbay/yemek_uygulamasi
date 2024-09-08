import 'package:flutter/material.dart';
import 'package:yemek_projesi/Yemekler.dart';

class Detaysayfa extends StatefulWidget {

  Yemekler yemek;

  Detaysayfa({required this.yemek});

  @override
  State<Detaysayfa> createState() => _DetaysayfaState();
}

class _DetaysayfaState extends State<Detaysayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(widget.yemek.yemek_adi),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.yemek.yemek_resim_adi}"),
            Text("${widget.yemek.yemek_fiyati} \u{20BA}",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 48 , color: Colors.deepPurple),),
            SizedBox(width: 200,height: 50,
              child: ElevatedButton(
                style:ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: Text("SİPARİŞ VER", style: TextStyle(color: Colors.white),),
                onPressed: (){
                  print("${widget.yemek.yemek_adi} sipariş verildi");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
