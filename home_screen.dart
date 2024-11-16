import 'package:flutter/material.dart';
import 'custom_scaffold.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Ana Sayfa',
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Hoş Geldiniz Bölümü
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: Text(
                  'E', // Kullanıcı adının ilk harfi
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Merhaba, Emre!",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Bugün harika bir gün!",
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 24),

          // Yaklaşan Randevular
          Text(
            "Yaklaşan Randevular",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.blue),
              title: Text("Dr. Ayşe Kaya"),
              subtitle: Text("Saat: 15:00 - 22 Kasım 2024"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Randevu detaylarına git
              },
            ),
          ),
          SizedBox(height: 24),

          // Önerilen Psikologlar
          Text(
            "Önerilen Psikologlar",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _psychologistCard(
                  name: "Dr. Yunus Emre Çukur",
                  specialty: "Aile Terapisti",
                  price: "₺600/saat",
                  image: 'images/psychologist/yns.jpeg',
                ),
                _psychologistCard(
                  name: "Dr. Taylan Kantar",
                  specialty: "Anksiyete Uzmanı",
                  price: "₺550/saat",
                  image: 'assets/images/psychologist2.png',
                ),
                _psychologistCard(
                  name: "Dr. Okan Ayan",
                  specialty: "Çocuk Psikolojisi",
                  price: "₺500/saat",
                  image: 'assets/images/psychologist3.png',
                ),
              ],
            ),
          ),
          SizedBox(height: 24),

          // Günlük Tavsiye   BU kısma api konabilir
          Text(
            "Günlük Tavsiye",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Bugün kendinize bir iyilik yapın ve 10 dakika meditasyon yapmayı deneyin.",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }



  Widget _psychologistCard({
    required String name,
    required String specialty,
    required String price,
    required String image,
  }) {
    return Card(
      margin: EdgeInsets.only(right: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: Container(
        width: 200,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(image),
            ),
            SizedBox(height: 16),
            Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              specialty,
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
            SizedBox(height: 8),
            Text(
              price,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
