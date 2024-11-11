class Makanan {
  final String nama;
  final String gambar;
  final String deskripsi;
  final String harga;
  final Map<String, String> bahan;
  final List<String> gambarPendukung;

  Makanan({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
    required this.harga,
    required this.bahan,
    required this.gambarPendukung,
  });
}
