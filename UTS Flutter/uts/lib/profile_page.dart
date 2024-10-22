import 'package:flutter/material.dart'; // Mengimpor paket material dari Flutter untuk widget dan tema.

/// Kelas ProfilePage menampilkan informasi pengguna.
class ProfilePage extends StatelessWidget {
  final String username; // Variabel untuk menyimpan nama pengguna.

  const ProfilePage(
      {super.key, required this.username}); // Konstruktor memerlukan username.

  @override
  Widget build(BuildContext context) {
    // Metode untuk membangun tampilan widget.
    return Scaffold(
      // Struktur dasar halaman.
      appBar: AppBar(
        title: const Text('Profil Pengguna'), // Judul di AppBar.
        backgroundColor: const Color.fromARGB(
            255, 135, 179, 255), // Warna latar belakang AppBar.
      ),
      body: Container(
        // Kontainer untuk konten utama.
        decoration: BoxDecoration(
          // Mengatur dekorasi kontainer.
          gradient: LinearGradient(
            // Latar belakang gradien.
            colors: [
              Colors.blue.shade100,
              Colors.blue.shade300
            ], // Warna gradien.
            begin: Alignment.topLeft, // Awal gradien.
            end: Alignment.bottomRight, // Akhir gradien.
          ),
        ),
        child: Center(
          // Menempatkan widget di tengah layar.
          child: SingleChildScrollView(
            // Mengizinkan scroll pada konten.
            padding: const EdgeInsets.all(20.0), // Padding di sekitar konten.
            child: Column(
              // Mengatur konten dalam kolom.
              mainAxisAlignment:
                  MainAxisAlignment.center, // Menyusun konten di tengah.
              children: [
                // Gambar profil dalam bentuk lingkaran
                CircleAvatar(
                  radius: 90, // Ukuran lingkaran.
                  backgroundImage:
                      AssetImage('assets/profile.jpg'), // Gambar profil.
                  backgroundColor: Colors
                      .grey[200], // Warna latar belakang jika gagal dimuat.
                ),
                const SizedBox(
                    height: 20), // Ruang antara gambar dan teks username.
                // Teks untuk username
                Text(
                  'Username: $username', // Menampilkan nama pengguna.
                  style: const TextStyle(
                    fontSize: 24, // Ukuran font.
                    fontWeight: FontWeight.bold, // Menebalkan teks.
                    color: Colors.black87, // Warna teks.
                  ),
                ),
                const SizedBox(height: 20), // Ruang setelah username.
                // Informasi akun dalam Card
                Card(
                  elevation: 4, // Efek bayangan pada Card.
                  margin: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 16), // Margin di sekitar Card.
                  child: Padding(
                    padding:
                        const EdgeInsets.all(16.0), // Padding di dalam Card.
                    child: Column(
                      // Konten dalam Card diatur dalam kolom.
                      children: [
                        const Text(
                          'Informasi Akun', // Judul informasi akun.
                          style: TextStyle(
                            fontSize: 20, // Ukuran font judul.
                            fontWeight:
                                FontWeight.bold, // Menebalkan teks judul.
                          ),
                        ),
                        const SizedBox(height: 10), // Ruang setelah judul.
                        const Text(
                          'Email: mdhp@gmail.com', // Email pengguna.
                          style: TextStyle(
                              fontSize: 16), // Ukuran font untuk email.
                        ),
                        const SizedBox(height: 10), // Ruang setelah email.
                        const Text(
                          'Nomor Telepon: +62 812-3456-7890', // Nomor telepon pengguna.
                          style: TextStyle(
                              fontSize: 16), // Ukuran font untuk nomor telepon.
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
