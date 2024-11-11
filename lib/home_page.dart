import 'package:flutter/material.dart';
import 'makanan.dart';
import 'list_item.dart';

class HomePage extends StatelessWidget {
  final List<Makanan> listMakanan = [
    Makanan(
      nama: "Bubur",
      gambar: "assets/bubur.jpg",
      deskripsi:
          "Bubur adalah makanan berkonsistensi lembut yang terbuat dari bahan dasar beras yang dimasak dengan air dalam jumlah banyak hingga menghasilkan tekstur yang kental dan halus. Ini merupakan hidangan yang populer di berbagai negara Asia, termasuk Indonesia. Di Indonesia, bubur ayam adalah variasi yang sangat populer dan sering dijual sebagai makanan jalanan. Bubur juga sering dijadikan makanan untuk orang sakit atau lansia karena mudah dicerna.",
      harga: "Rp 20,000",
      bahan: {
        "Ayam": "assets/bahan/ayam.png",
        "Bawang": "assets/bahan/bawang.png",
        "Kecap": "assets/bahan/kecap.png",
        "Kacang": "assets/bahan/kacang.png",
        "Telur": "assets/bahan/telur.png",
        "Daging": "assets/bahan/daging.png",
        "Daun bawang": "assets/bahan/daunBawang.png",
        "Ikan": "assets/bahan/ikan.png",
      },
      gambarPendukung: [
        "assets/bubur1.jpg",
        "assets/bubur2.jpg",
        "assets/bubur3.jpg",
      ],
    ),
    Makanan(
      nama: "Pecel",
      gambar: "assets/pecel.jpg",
      deskripsi:
          "Pecel adalah hidangan tradisional Indonesia yang terdiri dari berbagai sayuran rebus yang disiram dengan bumbu kacang yang khas. Hidangan ini berasal dari Jawa dan sangat populer sebagai makanan sehat yang lezat. Pecel biasanya disajikan dengan nasi dan bisa dimakan untuk sarapan, makan siang, atau makan malam. Hidangan ini terkenal akan rasa bumbu kacangnya yang gurih, manis, dan sedikit pedas, serta nilai gizinya yang tinggi karena mengandung banyak sayuran.",
      harga: "Rp 15,000",
      bahan: {
        "Kacang": "assets/bahan/kacang.png",
        "Kecap": "assets/bahan/kecap.png",
        "Sayur": "assets/bahan/sayur.png",
        "Telur": "assets/bahan/telur.png",
        "Daging": "assets/bahan/daging.png",
        "Daun bawang": "assets/bahan/daunBawang.png",
        "Ikan": "assets/bahan/ikan.png",
      },
      gambarPendukung: [
        "assets/pecel1.jpg",
        "assets/pecel2.jpg",
        "assets/pecel3.jpg",
      ],
    ),
    Makanan(
      nama: "Soto",
      gambar: "assets/soto.jpg",
      deskripsi:
          "Soto adalah sup tradisional Indonesia yang memiliki kuah kaldu bening atau kuning dengan berbagai variasi bahan dan bumbu khas daerah. Hidangan ini dapat ditemukan di seluruh Indonesia dengan karakteristik unik di setiap daerah. Soto biasanya disajikan panas dan dapat dimakan dengan nasi atau lontong. Hidangan ini populer sebagai sarapan atau makan siang, dan sering dijual di warung makan hingga restoran.",
      harga: "Rp 12,000",
      bahan: {
        "Ayam": "assets/bahan/ayam.png",
        "Bawang": "assets/bahan/bawang.png",
        "Kecap": "assets/bahan/kecap.png",
        "Sayur": "assets/bahan/sayur.png",
        "Telur": "assets/bahan/telur.png",
        "Daging": "assets/bahan/daging.png",
        "Daun bawang": "assets/bahan/daunBawang.png",
        "Ikan": "assets/bahan/ikan.png",
      },
      gambarPendukung: [
        "assets/soto1.jpg",
        "assets/soto2.jpg",
        "assets/soto3.jpg",
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Kuliner'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.orange[800],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = listMakanan[index];
            return ListItem(makanan: makanan);
          },
        ),
      ),
    );
  }
}
