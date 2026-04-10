import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Profil',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 188, 174, 207)),
      ),
      home: const ProfilePage(),
    );
  }
}

// ✅ Notre nouvelle page de profil
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Mon Profil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // 👤 Photo de profil
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/v2/D4E03AQE0UNk5A1voIg/profile-displayphoto-shrink_400_400/B4EZQXr0CsHAAk-/0/1735564158748?e=1777507200&v=beta&t=DTCJjaUnyPFE0gvuR7OAuVT2P-NzR609nzjJCmt9jPM',
              ),
            ),

            const SizedBox(height: 20), // espace

            // 🏷️ Nom
            const Text(
              'Jean Dupont',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // 📝 Bio
            const Text(
              'Développeur junior Flutter passionné 🚀',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            // 📧 Email
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.deepPurple),
                SizedBox(width: 8),
                Text('nnanggloirejb@gmail.com'),
              ],
            ),

            const SizedBox(height: 12),

            // 📍 Localisation
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, color: Colors.deepPurple),
                SizedBox(width: 8),
                Text('Libreville, Gabon'),
              ],
            ),

          ],
        ),
      ),
    );
  }
}