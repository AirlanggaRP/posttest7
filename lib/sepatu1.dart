import 'package:flutter/material.dart';

class Mysepatu1 extends StatelessWidget {
  const Mysepatu1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          title: Text("Timeless Low Black White"),
          backgroundColor: Colors.black54,
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Container(
                  width: lebar,
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/sepatu1.png")
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
              child : Text("Timelss series adalah artikel terbaru dari koleksi GMX yg menarik dari series ini adalah outsole sepatu ini mengunakan teknik vulcanized keluar jalur dari sepatu GMX pada umum nya bray yang menggunakan cupsole dan untuk upper sepatu ini menggunakan bahan canvas yang lebih fleksibel di gunakan di keseharian kalian serta adanya stilasi yang menjadikan sepatu ini sangat iconic. Selain itu plasma di desain sangat simple dan modis cocok untuk di pakai dalam kondisi apapun sehingga kepercayaan diri kalian bertambah saat menggunakan sepatu ini", 
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
                  Text("36 Panjang kaki : 22.5 cm", 
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("37 Panjang kaki : 23,5 cm",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
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