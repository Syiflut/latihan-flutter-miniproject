import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 1. Terapkan ThemeData untuk tema global
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
        fontFamily: 'Poppins', // Pastikan font sudah di-setup di pubspec.yaml jika pakai custom font
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mini Portfolio - Teknik Informatika"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),

                // 2. Container dengan styling untuk foto profil
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blueAccent, width: 3),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/photo.jpg', // Ubah dari profil.jpg ke photo.jpg
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // 3. Widget Text Utama
                const Text(
                  "Syifa Lutfia Aulia",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Teknik Informatika - Kelas Karyawan",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),

                const SizedBox(height: 20),

                // 4. Widget Row (Contoh untuk ikon sosmed/status)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.location_on, color: Colors.red, size: 20),
                    SizedBox(width: 4),
                    Text("Bandung, Indonesia"),
                    SizedBox(width: 16),
                    Icon(Icons.favorite, color: Colors.red, size: 20),
                    SizedBox(width: 4),
                    Text("Flutter Developer"),
                  ],
                ),

                const SizedBox(height: 24),

                // 5. Menggunakan Card & ListTile untuk Informasi / Portofolio
                const Card(
                  elevation: 3,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: Icon(Icons.school, color: Colors.blueAccent),
                    title: Text("Universitas Teknologi Bandung"),
                    subtitle: Text("Program Studi Teknik Informatika"),
                  ),
                ),

                const Card(
                  elevation: 3,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: Icon(Icons.code, color: Colors.green),
                    title: Text("Keahlian Utama"),
                    subtitle: Text("Flutter, Web & Mobile Dev"),
                  ),
                ),

                const Card(
                  elevation: 3,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: Icon(Icons.work, color: Colors.orange),
                    title: Text("Hobi"),
                    subtitle: Text("Bulu tagkis, traveling dan lari"),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
