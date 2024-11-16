import 'package:flutter/material.dart';
import 'custom_scaffold.dart';

class PsychologistsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> psychologists = [
    {
      'name': 'Dr. Okan Ayan',
      'specialty': 'Çocuk Psikolojisi',
      'price': '₺500/saat',
      'rating': 4.8,
      'location': 'Online',
      'image': 'assets/images/psychologist1.png',
    },
    {
      'name': 'Dr. Yunus Emre Çukur',
      'specialty': 'Aile Terapisi',
      'price': '₺600/saat',
      'rating': 4.5,
      'location': 'İstanbul',
      'image': 'images/psychologist/yns.jpeg',
    },
    {
      'name': 'Dr. Taylan Kantar',
      'specialty': 'Anksiyete Uzmanı',
      'price': '₺550/saat',
      'rating': 4.7,
      'location': 'Online',
      'image': 'assets/images/psychologist3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Psikologlar',
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: psychologists.length,
        itemBuilder: (context, index) {
          final psychologist = psychologists[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: InkWell(
              onTap: () {
                // Detay sayfasına geçiş
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PsychologistDetailScreen(
                      psychologist: psychologist,
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // Profil Resmi
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: psychologist['image'] != null
                          ? AssetImage(psychologist['image'])
                          : AssetImage('assets/images/default_avatar.png'),
                      backgroundColor: Colors.grey[200],
                    ),
                    SizedBox(width: 16),
                    // Psikolog Bilgileri
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            psychologist['name'] ?? 'Bilinmeyen',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            psychologist['specialty'] ?? 'Bilinmeyen Uzmanlık',
                            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.orange, size: 16),
                              SizedBox(width: 4),
                              Text(
                                (psychologist['rating'] ?? 0.0).toString(),
                                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                              ),
                              Spacer(),
                              Text(
                                psychologist['location'] ?? 'Lokasyon Bilinmiyor',
                                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    // Fiyat
                    Text(
                      psychologist['price'] ?? 'Belirtilmemiş',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class PsychologistDetailScreen extends StatelessWidget {
  final Map<String, dynamic> psychologist;

  PsychologistDetailScreen({required this.psychologist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(psychologist['name'] ?? 'Bilinmeyen Psikolog'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: psychologist['image'] != null
                  ? AssetImage(psychologist['image'])
                  : AssetImage('assets/images/default_avatar.png'),
            ),
            SizedBox(height: 16),
            Text(
              psychologist['name'] ?? 'Bilinmeyen',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              psychologist['specialty'] ?? 'Bilinmeyen Uzmanlık',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            Divider(height: 32),
            Text(
              "Fiyat: ${psychologist['price'] ?? 'Belirtilmemiş'}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              "Derecelendirme: ${(psychologist['rating'] ?? 0.0).toString()} ⭐",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 16),
            Text(
              "Lokasyon: ${psychologist['location'] ?? 'Bilinmiyor'}",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
