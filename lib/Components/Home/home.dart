import 'package:flutter/material.dart';
import 'package:tugas_1/utils/constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Penjualan Alat Musik'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Aksi ketika tombol keranjang belanja ditekan
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Menu Utama'),
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
            ),
            ListTile(
              title: Text('Katalog'),
              onTap: () {
                // Aksi ketika menu Katalog dipilih
              },
            ),
            ListTile(
              title: Text('Akun'),
              onTap: () {
                // Aksi ketika menu Akun dipilih
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Banner Promosi
            Container(
              padding: EdgeInsets.all(20),
              color: const Color.fromARGB(255, 126, 185, 240),
              child: Text(
                'Promosi Spesial!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            // Katalog Produk
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 10, // Ganti dengan jumlah produk yang tersedia
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Aksi ketika produk dipilih
                  },
                  child: Card(
                    elevation: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Gambar Produk
                        Container(
                          height: 150,
                          width: double.infinity,
                          color: Colors.grey[300],
                          // Ganti dengan gambar produk
                          child: Center(child: Text('Gambar Produk')),
                        ),
                        // Nama Produk
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Nama Produk',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        // Harga Produk
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'Rp 100.000',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
