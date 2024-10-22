import 'package:flutter/material.dart'; // Mengimpor paket material dari Flutter untuk menggunakan widget dan tema.

class AboutPage extends StatelessWidget {
  // Kelas AboutPage adalah widget stateless untuk menampilkan informasi tentang aplikasi.
  const AboutPage({super.key}); // Konstruktor untuk AboutPage.

  @override
  Widget build(BuildContext context) {
    // Metode untuk membangun tampilan widget.
    return Scaffold(
      // Struktur dasar halaman.
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'), // Judul di AppBar.
        backgroundColor: const Color.fromARGB(
            255, 135, 179, 255), // Mengatur warna latar belakang AppBar.
      ),
      body: Container(
        // Menggunakan Container sebagai widget dasar di body.
        decoration: BoxDecoration(
          // Mengatur dekorasi Container.
          gradient: LinearGradient(
            // Mengatur latar belakang dengan gradien.
            colors: [
              Colors.blue.shade100,
              Colors.blue.shade300
            ], // Warna gradien dari biru muda ke biru tua.
            begin: Alignment.topLeft, // Awal gradien di sudut kiri atas.
            end: Alignment.bottomRight, // Akhir gradien di sudut kanan bawah.
          ),
        ),
        child: Center(
          // Menempatkan semua widget di tengah layar.
          child: SingleChildScrollView(
            // Menambahkan kemampuan scroll jika konten melebihi layar.
            padding: const EdgeInsets.all(
                16.0), // Memberikan padding di sekitar konten.
            child: Column(
              // Mengatur konten dalam kolom vertikal.
              mainAxisAlignment:
                  MainAxisAlignment.center, // Menyusun konten di tengah kolom.
              children: [
                // Gambar logo atau gambar terkait dalam bentuk lingkaran
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 20.0), // Memberikan ruang di bawah gambar.
                  child: ClipOval(
                    // Membuat gambar berbentuk oval.
                    child: Image.asset(
                      'assets/logo.jpg', // Path ke gambar logo.
                      height: 100, // Tinggi gambar.
                      width: 100, // Lebar gambar.
                      fit: BoxFit.cover, // Mengatur gambar agar menutupi oval.
                    ),
                  ),
                ),
                const Text(
                  'Tentang Toko Bintang MDHP', // Judul tentang toko.
                  style: TextStyle(
                    fontSize: 24, // Ukuran font untuk judul.
                    fontWeight: FontWeight.bold, // Menebalkan teks judul.
                    color: Colors.black87, // Warna teks judul.
                  ),
                  textAlign: TextAlign.center, // Menyusun teks di tengah.
                ),
                const SizedBox(height: 20), // Ruang kosong setelah judul.
                const Text(
                  'Selamat datang di Toko Bintang MDHP. Toko Bintang MDHP telah berdiri sejak 2024, yang menyediakan berbagai jenis kebutuhan rumah tangga. Kami bertanggung jawab untuk memberikan layanan terbaik dengan produk yang berkualitas.', // Deskripsi toko.
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors
                          .black54), // Ukuran font dan warna untuk deskripsi.
                  textAlign: TextAlign
                      .justify, // Menyusun teks dengan rata kiri dan kanan.
                ),
                const SizedBox(height: 20), // Ruang kosong setelah deskripsi.
                const Text(
                  'Alamat kami: JL. Bantur, Kabupaten Malang, Jawa Timur.', // Menampilkan alamat toko.
                  style: TextStyle(
                      fontSize: 18, // Ukuran font untuk alamat.
                      fontStyle:
                          FontStyle.italic, // Mengatur teks menjadi miring.
                      color: Colors.black54), // Warna teks untuk alamat.
                  textAlign: TextAlign.center, // Menyusun teks di tengah.
                ),
                const SizedBox(height: 40), // Ruang kosong setelah alamat.
                ElevatedButton(
                  // Tombol untuk kembali.
                  onPressed: () {
                    // Aksi yang dijalankan saat tombol ditekan.
                    Navigator.pop(context); // Kembali ke halaman sebelumnya.
                  },
                  style: ElevatedButton.styleFrom(
                    // Mengatur gaya tombol.
                    backgroundColor:
                        Colors.blueAccent, // Warna latar belakang tombol.
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 12), // Padding di dalam tombol.
                    textStyle: const TextStyle(
                        fontSize: 18), // Ukuran font untuk teks tombol.
                  ),
                  child: const Text('Kembali'), // Teks pada tombol.
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
