import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String name,alamat,ukuran;
  final List pesanan;
  //// Pointer to Update Function
  final Function? onUpdate;
  //// Pointer to Delete Function
  final Function? onDelete;

  ItemCard(this.name, this.alamat, this.pesanan, this.ukuran, {this.onUpdate, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xfff78000))),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("NAMA LENGKAP",
                  style: TextStyle(
                    letterSpacing: 1.5,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15,),
                Text("ALAMAT",
                  style: TextStyle(
                    letterSpacing: 1.5,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  alamat,
                  style: TextStyle(
                    letterSpacing: 5,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15,),
                Text("PESANAN",
                  style: TextStyle(
                    letterSpacing: 1.5,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "$pesanan",
                  style: TextStyle(
                    letterSpacing: 5,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15,),
                Text("UKURAN",
                  style: TextStyle(
                    letterSpacing: 1.5,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ukuran,
                  style: TextStyle(
                    letterSpacing: 5,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15,),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.red[900],
                      ),
                      child: Center(
                          child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      )),
                      onPressed: () {
                        if (onDelete != null) onDelete!();
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
