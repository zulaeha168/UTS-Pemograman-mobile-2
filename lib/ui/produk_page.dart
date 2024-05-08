import 'package:aplikasi_flutter_pertamaku/ui/produk_detail.dart';
import 'package:aplikasi_flutter_pertamaku/ui/produk_form.dart';
import 'package:flutter/material.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) :super(key: key);

  @override 
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Data Produk'),
         backgroundColor: Color.fromARGB(255, 90, 130, 194),
        actions: [
          GestureDetector( 
            child: const Icon(Icons.add),
            onTap: () async { 
              Navigator.push( 
                context,
                MaterialPageRoute(
                  builder: ((context) => const ProdukForm())));
            })
        ], 
      ),

      body: ListView( 
        children: const[
          ItemProduk( 
            kodeProduk: "A001",
            namaProduk: "Kulkas",
            harga: 2500000,
          ),

          ItemProduk( 
            kodeProduk: "A002",
            namaProduk: "TV",
            harga: 5000000,
          ),

          ItemProduk( 
            kodeProduk: "A003",
            namaProduk: "Mesin Cuci",
            harga: 1500000,
          ),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ItemProduk({Key? key, this.kodeProduk, this.namaProduk, this.harga}) :super(key: key);

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      child: Card( 
        child: ListTile(
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
        ),  
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProdukDetail( 
            kodeProduk: kodeProduk,
            namaProduk: namaProduk,
            harga: harga,
          )));
      },
    );
  }
}