import 'package:flutter/material.dart'; // Mengimpor paket material dari Flutter untuk menggunakan widget dan tema.
import 'home_page.dart'; // Mengimpor halaman HomePage untuk navigasi setelah login berhasil.

class LoginPage extends StatefulWidget {
  // Kelas LoginPage adalah widget stateful untuk menangani state.
  const LoginPage({super.key}); // Konstruktor untuk LoginPage.

  @override
  _LoginPageState createState() =>
      _LoginPageState(); // Membuat instance dari _LoginPageState.
}

class _LoginPageState extends State<LoginPage> {
  // Kelas untuk mengelola state LoginPage.
  final TextEditingController _usernameController =
      TextEditingController(); // Kontrol untuk input username.
  final TextEditingController _passwordController =
      TextEditingController(); // Kontrol untuk input password.
  String _errorMessage = ''; // Variabel untuk menyimpan pesan kesalahan login.

  void _login() {
    // Fungsi untuk menangani proses login.
    String username =
        _usernameController.text; // Mengambil teks dari kontrol username.
    String password =
        _passwordController.text; // Mengambil teks dari kontrol password.

    // Memeriksa kredensial login.
    if (username == 'admin' && password == 'admin123') {
      // Jika berhasil, navigasi ke halaman HomePage.
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(
              username: username), // Mengirim username ke halaman HomePage.
        ),
      );
    } else {
      // Jika gagal, tampilkan pesan kesalahan.
      setState(() {
        _errorMessage =
            'Username atau password salah!'; // Menetapkan pesan kesalahan.
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Metode untuk membangun tampilan widget.
    return Scaffold(
      // Struktur dasar halaman.
      body: Stack(
        // Menggunakan Stack untuk menempatkan widget secara berlapis.
        children: [
          // Gambar latar belakang
          Positioned.fill(
            child: Image.asset(
              'assets/bg2.jpg', // Path ke gambar latar belakang.
              fit: BoxFit
                  .cover, // Mengatur gambar agar memenuhi seluruh background.
            ),
          ),
          // Konten di atas background
          Center(
            // Menempatkan konten di tengah layar.
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Padding di sisi kiri dan kanan.
              child: Container(
                // Menggunakan Container untuk mengatur konten login.
                padding:
                    const EdgeInsets.all(20.0), // Padding di dalam Container.
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(
                      0.8), // Warna latar belakang dengan transparansi.
                  borderRadius:
                      BorderRadius.circular(20), // Mengatur sudut melengkung.
                ),
                child: Column(
                  // Mengatur konten dalam kolom.
                  mainAxisSize:
                      MainAxisSize.min, // Ukuran kolom sesuai dengan konten.
                  children: [
                    const Text(
                      'Login Admin', // Judul untuk halaman login.
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold), // Gaya teks judul.
                    ),
                    const SizedBox(height: 20), // Ruang kosong setelah judul.
                    TextField(
                      // Field untuk input username.
                      controller: _usernameController, // Menghubungkan kontrol.
                      decoration: const InputDecoration(
                          labelText: 'Username'), // Label untuk input username.
                    ),
                    const SizedBox(
                        height: 10), // Ruang kosong setelah field username.
                    TextField(
                      // Field untuk input password.
                      controller: _passwordController, // Menghubungkan kontrol.
                      decoration: const InputDecoration(
                          labelText: 'Password'), // Label untuk input password.
                      obscureText:
                          true, // Menyembunyikan teks input untuk keamanan.
                    ),
                    const SizedBox(
                        height: 20), // Ruang kosong setelah field password.
                    ElevatedButton(
                      // Tombol untuk memicu fungsi login.
                      onPressed:
                          _login, // Menjalankan fungsi _login saat tombol ditekan.
                      child: const Text('Login'), // Teks pada tombol.
                    ),
                    const SizedBox(height: 10), // Ruang kosong setelah tombol.
                    Text(
                      _errorMessage, // Menampilkan pesan kesalahan jika ada.
                      style: const TextStyle(
                          color: Colors.red), // Warna teks kesalahan.
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
