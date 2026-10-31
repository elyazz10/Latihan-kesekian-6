import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  // day 1 data profil pengguna (diganti nama & role sendiri)
  final String userName = 'Ahmad ilyas';
  final String role = 'Mahasiswa Software Engineering';

  // day 3 list experiencenya
  final List<String> experiences = const [
    'Crew Store -PT.Lancar Wiguna Sejahtera(lawson)',
    'Operator Pertashop - PT. Pertamina (Persero)',
    'Racker Billiard',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            
            const ProfileAvatar(),

            
            const SizedBox(height: 16),

            
            ProfileInfo(userName: userName, role: role),

            const SizedBox(height: 16),

            // malam ke 4 tombol edit profil
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('fitur edit belum aktif pada modul statis.'),
                  ),
                );
              },
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profil'),
            ),

            const SizedBox(height: 20),

            // day 2 malam 
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StatItem(count: '15', label: 'Proyek'),
                  SizedBox(width: 28),
                  StatItem(count: '1.2K', label: 'Followers'),
                  SizedBox(width: 28),
                  
                  StatItem(count: '42', label: 'Following'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Pengalaman Kerja',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 6),
            const Divider(),
            const SizedBox(height: 6),

            // day 3 listview experience
            Expanded(
              child: ListView.builder(
                itemCount: experiences.length,
                itemBuilder: (context, index) {
                  return ExperienceCard(title: experiences[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



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

// 2. widjet khusus teks nama,role
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

// custom widget hasil extract day 2 malam

class StatItem extends StatelessWidget {
  final String count;
  final String label;

  const StatItem({
    super.key,
    required this.count,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}

// custom widget hasil extract daey tri

class ExperienceCard extends StatelessWidget {
  final String title;

  const ExperienceCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: const Icon(Icons.work, color: Colors.blueAccent),
        title: Text(title),
      ),
    );
  }
}
