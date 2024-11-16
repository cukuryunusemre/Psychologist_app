import 'package:flutter/material.dart';
import 'custom_scaffold.dart';

class ProfileScreen extends StatelessWidget {
  final String name = "Yunus Emre Çukur";
  final int age = 28;
  final String email = "cukuryunusemre@gmail.com";
  final String phone = "+90 616 161 6161";
  final String disease = "Ankastre Bozukluğu";
  final String therapyGoal = "Stresi azaltmak ve özgüveni artırmak";
  final List<String> pastSessions = [
    "Dr. Mehmet Demir - 05 Kasım 2024",
    "Dr. Ayşe Kaya - 22 Ekim 2024",
    "Dr. Zeynep Yıldız - 15 Eylül 2024",
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Profilim',
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Profil Fotoğrafı ve Temel Bilgiler
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Text(
                name[0],
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8),
          Center(
            child: Text(
              "$age yaşında",
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ),
          Divider(height: 32, thickness: 1),

          // İletişim Bilgileri
          ListTile(
            leading: Icon(Icons.email, color: Colors.blue),
            title: Text("E-posta"),
            subtitle: Text(email),
          ),
          ListTile(
            leading: Icon(Icons.phone, color: Colors.green),
            title: Text("Telefon"),
            subtitle: Text(phone),
          ),

          Divider(height: 32, thickness: 1),

          // Sağlık ve Terapi Bilgileri
          ListTile(
            leading: Icon(Icons.health_and_safety, color: Colors.red),
            title: Text("Sağlık Durumu"),
            subtitle: Text(disease),
          ),
          ListTile(
            leading: Icon(Icons.flag, color: Colors.orange),
            title: Text("Terapi Hedefi"),
            subtitle: Text(therapyGoal),
          ),

          Divider(height: 32, thickness: 1),

          // Randevu Bilgileri
          ListTile(
            leading: Icon(Icons.calendar_today, color: Colors.orange),
            title: Text("Yaklaşan Randevular"),
            subtitle: Text("Dr. Ayşe Kaya - 15:00, 22 Kasım 2024"),
            onTap: () {
              // Randevu detaylarına git
            },
          ),
          ListTile(
            leading: Icon(Icons.history, color: Colors.purple),
            title: Text("Geçmiş Randevular"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: pastSessions.map((session) {
                return Text(session, style: TextStyle(fontSize: 14));
              }).toList(),
            ),
          ),

          Divider(height: 32, thickness: 1),

          // Uygulama Ayarları
          ListTile(
            leading: Icon(Icons.settings, color: Colors.grey),
            title: Text("Ayarlar"),
            onTap: () {
              // Ayarlar ekranına git
            },
          ),
          ListTile(
            leading: Icon(Icons.lock, color: Colors.blueGrey),
            title: Text("Şifre Değiştir"),
            onTap: () {
              // Şifre değiştirme ekranına git
            },
          ),
          ListTile(
            leading: Icon(Icons.language, color: Colors.blueAccent),
            title: Text("Dil ve Tema"),
            onTap: () {
              // Dil ve tema ayarlarına git
            },
          ),

          Divider(height: 32, thickness: 1),

          // Çıkış Butonu
          ElevatedButton(
            onPressed: () {
              // Çıkış yap
            },
            child: Text("Çıkış Yap"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // primary yerine backgroundColor kullanılıyor
              padding: EdgeInsets.symmetric(vertical: 16),
              minimumSize: Size(double.infinity, 50),
            ),
          ),
        ],
      ),
    );
  }
}
