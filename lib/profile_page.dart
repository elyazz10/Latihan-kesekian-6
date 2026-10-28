import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  // day 1 data profil pengguna (diganti nama & role sendiri)
  final String userName = 'Ahmad ilyas';
  final String role = 'Mahasiswa Software Engineering';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // day 1 appbar bagian atas
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              // day 1 siang manggil widget avatar hasil extract
              const ProfileAvatar(),

              // day 1 pagi jarak ke bawah yg difix dari aslinya width 16
              const SizedBox(height: 16),

              // day 1 siang manggil widget nama dan role hasil extract
              ProfileInfo(userName: userName, role: role),

              const SizedBox(height: 24),

              // day 2 pagi baris statistik profil proyek followers sama following
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // kolom proyek
                    Column(
                      children: [
                        Text(
                          '15',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Proyek',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),

                    // day 2 pagi jarak kesamping yg difix dari aslinya height 24
                    SizedBox(width: 24),

                    // kolom followers
                    Column(
                      children: [
                        Text(
                          '1.2K',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Followers',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),

                    SizedBox(width: 24),

                    // kolom following
                    Column(
                      children: [
                        Text(
                          '42',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Following',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// custom widget hasil extract di day 1 siang

// 1. widget foto profil
class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Colors.grey,
      child: Icon(Icons.person, size: 50, color: Colors.white),
    );
  }
}

// 2. widget info nama dan role
class ProfileInfo extends StatelessWidget {
  final String userName;
  final String role;

  const ProfileInfo({
    super.key,
    required this.userName,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          userName,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          role,
          style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
