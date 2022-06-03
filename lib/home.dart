import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016037_airlanggarahimahputra/newHome.dart';


class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  Widget myContainer(BuildContext context){
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(
        bottom: 70
      ),
      width: lebar,
      height: tinggi/1.5,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/sepatu1.png")
        ),
      ),
    );
  }

  Widget myContainer2(BuildContext context){
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(
        bottom: 70
      ),
      width: lebar,
      height: tinggi/1.5,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/sepatu2.png")
        ),
      ), 
    );
  }

Widget tambahSepatu(BuildContext context){
  var lebar = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30, top: 50, left: 50, right: 50
      ),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.black54,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
          ),
          child: Text("ORDER NOW",
            style: TextStyle(
              letterSpacing: 5,
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: (){
            Get.to(newHome());
          },
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Footwear Airszy",
            textAlign: TextAlign.center,
          ),
        ), 
        backgroundColor: Colors.black54,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text("Footwear Airszy",
                  style: TextStyle(
                    letterSpacing: 5,
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black54,
              ),
            ),
            ListTile(
              tileColor: Colors.black54,
              leading: Icon(Icons.shopping_cart),
              title: Text("ORDER NOW",
                  style: TextStyle(
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){
                Get.to(newHome());
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    myContainer(context),
                    myContainer2(context),
                  ],
                ),
              ),
              tambahSepatu(context),
            ],
          )
        ],
      ),
    );
  }
}