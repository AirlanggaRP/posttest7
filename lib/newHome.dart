import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:custom_check_box/custom_check_box.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:posttest7_1915016037_airlanggarahimahputra/controller/pilihanCon.dart';
import 'package:posttest7_1915016037_airlanggarahimahputra/controller/txtControl.dart';
import 'package:posttest7_1915016037_airlanggarahimahputra/item_card.dart';
import 'package:posttest7_1915016037_airlanggarahimahputra/sepatu1.dart';
import 'package:posttest7_1915016037_airlanggarahimahputra/sepatu2.dart';
import 'package:get/get.dart';


class newHome extends StatelessWidget {

  List<Widget> _tabs = [
    Tab(text: "Form",
    icon: Icon(Icons.menu),),
    Tab(text: "Pesanan",
    icon: Icon(Icons.delivery_dining_sharp),),
  ];

  final TextControl namaController = Get.put(TextControl());
  final TextControl alamatController = Get.put(TextControl());
  final TextControl pilihController = Get.put(TextControl());
  final pilihCon sepatu1Con = Get.put(pilihCon());
  final pilihCon sepatu2Con = Get.put(pilihCon());
  
Future<dynamic> CustomAlert(BuildContext context, String pesan1,String pesan2,Text pesan3, Text pesan4){
    return showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: Center(child: Text("Footwear Airszy", textAlign: TextAlign.center,)),
          // backgroundColor: Colors.black54,
          content : Container(child: Column(children: [
            Text(
              "Nama Lengkap : $pesan1",
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 5,
                color: Colors.black,
                fontStyle: FontStyle.italic,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Alamat : $pesan2",
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 5,
                color: Colors.black,
                fontStyle: FontStyle.italic,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            pesan3,
            pesan4,
          ],)),
          actions: [
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  }, 
                child: Text("OK"),
                
                style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                textStyle: TextStyle(
                  letterSpacing: 5,
                  
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                primary: Colors.black,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
              ),
            ),
          ],
        );
      },
    );
  }
  Widget inpNama(){
      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: namaController.namaCon,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Nama Lengkap',
            ),
          ),
        ),
      ],
    );
  }

  Widget inpAlamat(){
      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: alamatController.alamatCon,
            maxLines : 3,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Alamat',
            ),
          ),
        ),
      ],
    );
  }

  Widget myContainer(BuildContext context){
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(30),
      child: OutlinedButton(
        onPressed: (){
          Get.to(Mysepatu1());
        },
        style: OutlinedButton.styleFrom(
          shadowColor: Colors.black54,
          elevation: 50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 70,
                top: 50,
                
              ),
              width: lebar/1.1,
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/sepatu1.png")
                ),
              ),
            ),
            Text("Timeless Low Black White",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontStyle: FontStyle.italic,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Rp. 210.000",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontStyle: FontStyle.italic,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
                height: 20,
              ),
              Obx(
                (() => CustomCheckBox(
                  value: sepatu1Con.sepatu1.value,
                  shouldShowBorder: true,
                  borderColor: Colors.red,
                  checkedFillColor: Colors.red,
                  borderRadius: 8,
                  borderWidth: 1,
                  checkBoxSize: 22,
                  onChanged: (value) {
                    sepatu1Con.sepatu1(value);
                  },
                )),
              ),
              Text("BUY",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontStyle: FontStyle.italic,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myContainer2(BuildContext context){
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(30),
      child: OutlinedButton(
        onPressed: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (_) => Mysepatu2())
          );
        },
        style: OutlinedButton.styleFrom(
          shadowColor: Colors.black54,
          elevation: 50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          )
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 70,
                top: 50,
              ),
              width: lebar/1.1,
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/sepatu2.png")
                ),
              ),
            ),
            Text("Gavin Navy White STZ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontStyle: FontStyle.italic,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Rp. 200.000",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontStyle: FontStyle.italic,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
                height: 20,
              ),
              Obx(
                (() =>  CustomCheckBox(
                  value: sepatu2Con.sepatu2.value,
                  shouldShowBorder: true,
                  borderColor: Colors.red,
                  checkedFillColor: Colors.red,
                  borderRadius: 8,
                  borderWidth: 1,
                  checkBoxSize: 22,
                  onChanged: (value) {
                    sepatu2Con.sepatu2(value);
                  },
                ))
              ),
              Text("BUY",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontStyle: FontStyle.italic,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget sizeRadio(BuildContext context){
    return Container(
      child : Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Ukuran',
                style: TextStyle(fontSize: 15,
                letterSpacing: 5,
                fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomRadioButton(
                elevation: 0,
                wrapAlignment: WrapAlignment.spaceAround,
                unSelectedColor: Theme.of(context).canvasColor,
                buttonLables: [
                  '39',
                  '40',
                  '41',
                ],
                buttonValues: [
                  "39",
                  "40",
                  "41",
                ],
                buttonTextStyle: ButtonTextStyle(  
                  selectedColor: Colors.white,
                  unSelectedColor: Colors.black,
                  // textStyle: Theme.of(context).textTheme.bodyText1,
                ),
                radioButtonValue: (value) {
                  pilihController.pilih = value!;
                },
                selectedColor: Theme.of(context).colorScheme.secondary,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget tampil(BuildContext context){
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference sepatu = firestore.collection("sepatu");
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Container(
      width: lebar/1.2,
      height: tinggi,
      margin: EdgeInsets.only(
        bottom: 50,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black54,
          width: 5,
        )
      ),
      child : SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              StreamBuilder<QuerySnapshot>(
                    stream: sepatu.snapshots(),
                    builder: (_, snapshot) {
                      return (snapshot.hasData)
                          ? Column(
                              children: snapshot.data!.docs
                                  .map(
                                    (e) => ItemCard(
                                      e.get('nama'), 
                                      e.get('alamat'),
                                      e.get('pesanan'),
                                      e.get('ukuran'),
                                      onUpdate: () {
                                        
                                      },
                                      onDelete: () {
                                        sepatu.doc(e.id).delete();
                                      },
                                    ),
                                  )
                                  .toList(),
                            )
                          : Text('Loading...');
                    },
                  ),
                  SizedBox(height: 150)
              // Text(
              //   "Nama Lengkap : ${namaController.namaCon.text}",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     letterSpacing: 5,
              //     color: Colors.black,
              //     fontStyle: FontStyle.italic,
              //     fontSize: 15,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // Text(
              //   "Alamat : ${alamatController.alamatCon.text}",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     letterSpacing: 5,
              //     color: Colors.black,
              //     fontStyle: FontStyle.italic,
              //     fontSize: 15,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // Text(
              //   "Pesanan : ${sepatu1Con.sepatu1.value ? "Timeless Low Black White" : ""} ${sepatu2Con.sepatu2.value ? "Gavin Navy White STZ" : ""}",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     letterSpacing: 5,
              //     color: Colors.black,
              //     fontStyle: FontStyle.italic,
              //     fontSize: 15,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // Text(
              //   "Ukuran : ${pilihController.pilih}",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     letterSpacing: 5,
              //     color: Colors.black,
              //     fontStyle: FontStyle.italic,
              //     fontSize: 15,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
            ],
          ),
      ),
    );
  }

  Widget tambah(BuildContext context){
    var lebar = MediaQuery.of(context).size.width;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference sepatu = firestore.collection("sepatu");
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30, top: 50, left: 50, right: 50
      ),
      width: lebar,
      height: 100,
      
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          textStyle: TextStyle(
            letterSpacing: 5,
            
            fontStyle: FontStyle.italic,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          primary: Colors.black,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))
          )
        ),
        onPressed: () {
          List pesanan = [sepatu1Con.sepatu1.value ? "Timeless Low Black White" : "" , sepatu2Con.sepatu2.value ? "Gavin Navy White STZ" : ""];
          sepatu.add({
            'nama' : namaController.namaCon.text,
            'alamat' : alamatController.alamatCon.text,
            'pesanan' : pesanan,
            'ukuran' : pilihController.pilih
          });
          tampil(context);
          CustomAlert(context, 
            namaController.namaCon.text, 
            alamatController.alamatCon.text,
            Text(
              "Pesanan : ${sepatu1Con.sepatu1.value ? "Timeless Low Black White" : ""} ${sepatu2Con.sepatu2.value ? "Gavin Navy White STZ" : ""}",
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 5,
                color: Colors.black,
                fontStyle: FontStyle.italic,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Ukuran : ${pilihController.pilih}",
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 5,
                color: Colors.black,
                fontStyle: FontStyle.italic,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
          namaController.namaCon.text = '';
          alamatController.alamatCon.text = '';
          sepatu1Con.sepatu1.value = false;
          sepatu2Con.sepatu2.value = false;
          pilihController.pilih = '';
          pesanan = [];
        }, 
        child: Text("ORDER NOW"),
      ),
    );
  }

  Widget form(BuildContext context){
  return Container(
    child : ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // myContainer(),
              // sizeSepatu(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    myContainer(context),
                    myContainer2(context),
                  ],
                ),
              ),
              inpNama(),
              inpAlamat(),
              sizeRadio(context),
              tambah(context),
            ],
          ),
        ],
      ),
    );
  }

  
  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Footwear Airszy || Airlangga Rahimah Putra",
              textAlign: TextAlign.center,
            ),
          ),
          bottom: TabBar(
            tabs: _tabs,
          ), 
          backgroundColor: Colors.black54,
        ),
        body: TabBarView(
          children: [
            form(context),
            tampil(context),
          ],
        )
      ),
    );
  }
}