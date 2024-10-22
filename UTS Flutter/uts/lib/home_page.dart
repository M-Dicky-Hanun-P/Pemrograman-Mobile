import 'package:flutter/material.dart'; // Mengimpor paket material dari Flutter untuk menggunakan berbagai widget dan tema.
import 'about_page.dart'; // Mengimpor halaman AboutPage untuk navigasi.
import 'profile_page.dart'; // Mengimpor halaman ProfilePage untuk navigasi.
import 'login_page.dart'; // Mengimpor halaman LoginPage untuk navigasi.

/// Kelas HomePage adalah widget stateless yang menampilkan halaman utama aplikasi.
class HomePage extends StatelessWidget {
  final String username; // Variabel untuk menyimpan nama pengguna.

  const HomePage(
      {super.key,
      required this.username}); // Konstruktor untuk HomePage, memerlukan username sebagai parameter.

  @override
  Widget build(BuildContext context) {
    // Override metode build() untuk mendeskripsikan tampilan widget.
    return Scaffold(
      // Mengembalikan widget Scaffold sebagai struktur dasar halaman.
      appBar: AppBar(
        title: const Text('Halaman Utama'), // Judul di AppBar.
        backgroundColor: const Color.fromARGB(
            255, 135, 179, 255), // Mengatur warna latar belakang AppBar.
        actions: [
          // Menambahkan ikon aksi di AppBar.
          IconButton(
            icon: const Icon(Icons.info), // Ikon info untuk halaman About.
            onPressed: () {
              // Aksi saat tombol ditekan.
              Navigator.push(
                // Navigasi ke halaman AboutPage.
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person), // Ikon untuk halaman profil.
            onPressed: () {
              // Aksi saat tombol ditekan.
              Navigator.push(
                // Navigasi ke halaman ProfilePage, mengirim username.
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(username: username),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        // Menggunakan Container sebagai widget dasar di body.
        decoration: BoxDecoration(
          // Mengatur dekorasi Container.
          image: DecorationImage(
            image:
                AssetImage('assets/bg2.jpg'), // Path ke gambar latar belakang.
            fit: BoxFit
                .cover, // Mengatur gambar agar menutupi seluruh kontainer.
          ),
        ),
        child: Center(
          // Menempatkan semua widget di tengah layar.
          child: Column(
            // Mengatur konten dalam kolom vertikal.
            mainAxisAlignment:
                MainAxisAlignment.center, // Menyusun konten di tengah kolom.
            children: [
              // Gambar sambutan (logo atau gambar lainnya) dalam bentuk lingkaran
              ClipOval(
                // Memotong gambar menjadi bentuk oval (lingkaran).
                child: Image.asset(
                  'assets/logo.jpg', // Path ke logo.
                  height: 100, // Tinggi gambar.
                  width:
                      100, // Lebar gambar (sama dengan tinggi untuk berbentuk lingkaran).
                  fit: BoxFit.cover, // Mengatur gambar agar menutupi oval.
                ),
              ),
              const SizedBox(
                  height: 20), // Ruang kosong antara gambar dan teks.
              // Selamat datang
              Text(
                'Selamat Datang di Bintang MDHP!', // Teks sambutan.
                style: const TextStyle(
                  fontSize: 26, // Ukuran font untuk teks sambutan.
                  fontWeight: FontWeight.bold, // Menebalkan teks.
                  color: Colors
                      .white, // Warna teks agar kontras dengan latar belakang.
                ),
                textAlign: TextAlign.center, // Menyusun teks di tengah.
              ),
              const SizedBox(height: 30), // Ruang kosong setelah teks sambutan.
              // Tombol Logout
              ElevatedButton(
                onPressed: () {
                  // Aksi saat tombol ditekan.
                  // Navigasi ke halaman login
                  Navigator.pushReplacement(
                    // Mengganti halaman saat ini dengan halaman LoginPage.
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 254, 189, 189), // Warna tombol logout.
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 12), // Padding untuk tombol.
                  textStyle: const TextStyle(
                      fontSize: 18), // Ukuran font untuk teks tombol.
                ),
                child: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
