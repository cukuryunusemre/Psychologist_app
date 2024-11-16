import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            // Bildirim ekranına yönlendirme
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NotificationsScreen(),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bildirimler'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: Text('Randevu Onayı'),
              subtitle: Text('Randevunuz onaylandı. Saat 15:00 - Dr. Ayşe Kaya.'),
              leading: Icon(Icons.check_circle, color: Colors.green),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Yeni Mesaj'),
              subtitle: Text('Dr. Mehmet Demir size bir mesaj gönderdi.'),
              leading: Icon(Icons.message, color: Colors.blue),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Kampanya'),
              subtitle: Text('Yeni kullanıcılar için %20 indirim!'),
              leading: Icon(Icons.local_offer, color: Colors.orange),
            ),
          ),
        ],
      ),
    );
  }
}