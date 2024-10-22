import 'package:flutter/material.dart'; // Mengimpor paket material dari Flutter untuk widget dan tema.
import 'login_page.dart'; // Mengimpor halaman LoginPage untuk navigasi.

class LandingPage extends StatelessWidget {
  // Kelas LandingPage adalah widget stateless.
  const LandingPage(
      {super.key}); // Konstruktor kelas, menggunakan kunci dari super.

  @override
  Widget build(BuildContext context) {
    // Metode untuk membangun tampilan widget.
    return Scaffold(
      // Struktur dasar halaman.
      body: Stack(
        // Menggunakan Stack untuk menempatkan widget di atas satu sama lain.
        children: [
          // Gambar latar belakang
          Positioned.fill(
            // Mengisi seluruh area dengan gambar.
            child: Image.asset(
              'assets/bg1.jpg', // Path ke gambar latar belakang.
              fit: BoxFit
                  .cover, // Mengatur gambar agar memenuhi seluruh background.
            ),
          ),
          // Konten di atas background
          Center(
            // Menempatkan konten di tengah layar.
            child: Column(
              // Mengatur konten dalam kolom.
              mainAxisAlignment:
                  MainAxisAlignment.center, // Menyusun konten di tengah kolom.
              children: [
                const Text(
                  'Welcome to Bintang MDHP', // Judul selamat datang.
                  style: TextStyle(
                    fontSize: 28, // Ukuran font untuk judul.
                    fontWeight: FontWeight.bold, // Menebalkan teks judul.
                    color: Colors
                        .white, // Warna teks putih agar kontras dengan background.
                  ),
                ),
                const SizedBox(height: 20), // Ruang kosong setelah judul.
                const Text(
                  'Mitra terpercaya Anda untuk kebutuhan rumah tangga.', // Deskripsi singkat.
                  style: TextStyle(
                    fontSize: 16, // Ukuran font untuk deskripsi.
                    color: Colors
                        .white, // Warna teks putih agar kontras dengan background.
                  ),
                  textAlign: TextAlign.center, // Menyusun teks di tengah.
                ),
                const SizedBox(height: 40), // Ruang kosong setelah deskripsi.
                ElevatedButton(
                  // Tombol untuk navigasi ke halaman login.
                  onPressed: () {
                    // Fungsi ketika tombol ditekan.
                    Navigator.push(
                      // Navigasi ke halaman LoginPage.
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LoginPage()), // Membuat rute baru ke LoginPage.
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 221, 233, 255), // Warna latar belakang tombol.
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 12), // Padding di sekitar teks tombol.
                    textStyle: const TextStyle(
                        fontSize: 18), // Ukuran font untuk teks tombol.
                  ),
                  child:
                      const Text('Login'), // Teks yang ditampilkan di tombol.
                ),
                const SizedBox(height: 20), // Ruang kosong setelah tombol.
              ],
            ),
          ),
        ],
      ),
    );
  }
}
