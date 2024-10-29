import 'package:flutter/material.dart';
import 'package:flutter_project_1/login_page.dart';

class HomePage extends StatelessWidget {
  final String username;

  const HomePage({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      drawer: Drawer(
        child: Container(
          color: const Color(0xFF0E1F43), // Background biru gelap
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/img/logo_jti_polinema.png',
                    height: 50,
                  ),
                ],
              ),
              // Header dengan logo SIKOMTI
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img/SIKOMTI.png',
                      height: 40,
                    ),
                  ],
                ),
              ),
              // Profil user
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(127, 255, 255, 255),
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          username,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(color: Color.fromARGB(214, 255, 255, 255)),
              // Menu items
              ListTile(
                leading: const Icon(Icons.dashboard, color: Colors.white),
                title: const Text(
                  'Dashboard',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Fungsi ketika tombol ditekan
                  Navigator.push(
                    // Navigasi ke halaman HomePage.
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(
                            username:
                                username)), // Membuat rute baru ke HomePage.
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.assignment, color: Colors.white),
                title: const Text(
                  'Lihat dan Pilih Kompen',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // TODO: Navigate to Lihat dan Pilih Kompen
                },
              ),
              ListTile(
                leading: const Icon(Icons.update, color: Colors.white),
                title: const Text(
                  'Update Progres Tugas Kompen',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // TODO: Navigate to Update Progres
                },
              ),
              ListTile(
                leading: const Icon(Icons.edit_document, color: Colors.white),
                title: const Text(
                  'Update Kompen',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // TODO: Navigate to Update Kompen
                },
              ),
              const Spacer(),
              // Logout button
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {
                    // Fungsi ketika tombol ditekan
                    Navigator.push(
                      // Navigasi ke halaman LoginAs.
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LoginPage()), // Membuat rute baru ke LoginAs.
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('LOGOUT'),
                ),
              ),
              // Footer
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                child: const Center(
                  child: Text(
                    '2024© Sistem Kompensasi Jurusan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          // Welcome banner
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            color: Colors.green,
            child: Text(
              'Selamat datang mahasiswa $username',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          // Main content area
          Expanded(
            child: Container(
              color: Colors.blue[50],
              // Add your main content here
            ),
          ),
          // Footer
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color(0xFF0E1F43),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: const Center(
              child: Text(
                '2024© Sistem Kompensasi Jurusan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
