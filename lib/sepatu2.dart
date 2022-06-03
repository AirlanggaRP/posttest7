import 'package:flutter/material.dart';

class Mysepatu2 extends StatelessWidget {
  const Mysepatu2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          title: Text("Gavin Navy White STZ"),
          backgroundColor: Colors.black54,
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Container(
                  // margin: EdgeInsets.all(50),
                  width: lebar,
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/sepatu2.png")
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child: Text("Description",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),  
              child : Text("Nah ini yang di tunggu-tunggu para Geoff Gang Gavin Navy White Stz! Didesign khusus oleh designer kenamaan Mike Milford loh! Kemana pun kalian pake sepatu ini bakalan bikin penampilan kalian lebih hits dan tentunya up to date. Yang special pada series ini adalah penambahan logo mike milford di bagian samping sepatu dengan teknik stilasi dan yg paling penting nih sepatu ini menggunakan insole yg sangat empuk sehingga membuat sepatu ini nyaman banget di pake untuk aktifitas kamu.", 
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.justify,
              ),   
            ),
            Container(
              margin: EdgeInsets.only(
                top: 50,
                left: 20,
              ),
              child: Text("Shoes Material",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Upper : Canvas", 
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("Heeltab : Canvas",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("Bumper : Rubber",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("Sole : Rubber",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("Insole : Jersey Foam",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("Construction : Vulcanize",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 50,
                left: 20,
              ),
              child: Text("SIZE CHART",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("38 Panjang kaki : 24 cm",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("39 Panjang kaki : 25 cm",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("40 Panjang kaki : 25,5 cm",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("41 Panjang kaki : 26,5 cm",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("42 Panjang kaki : 27 cm",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("43 Panjang kaki : 28 cm",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("44 Panjang kaki : 28,5 cm",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("45 Panjang kaki : 29.5 cm", 
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("46 Panjang kaki : 30 cm",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("(Panjang kaki di ukur dari ujung tumit sampai ujung jempol)",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child: Text("NOTE",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
                bottom: 20,
              ),  
              child : Text("Untuk mempermudah proses komplain penerimaan barang yang tidak sesuai saat meneriman barang di himbau untuk mem-video-kan proses pembukaan paket yang masih tersegel.", 
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.justify,
              ),   
            ),
          ],
        ),
    );
  }
}