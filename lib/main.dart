
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
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: const Color(0xFFFFF5F8),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD7799D),
        ),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFFFF5F8),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Profile
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFFF4DCE7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 100,
                          height: 100,
                          color: Colors.white,
                          child: const Icon(
                            Icons.person,
                            size: 60,
                            color: Color(0xFFD7799D),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Alinda Aulia',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF75475C),
                    ),
                  ),
                  const Text(
                    'Informatika Student',
                    style: TextStyle(
                      color: Color(0xFF85566B),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Learning, Creating, and Exploring Technology.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // About Me
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'About Me',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF75475C),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              color: Colors.white,
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Color(0xFFD7799D),
                    ),
                    title: Text('Education'),
                    subtitle: Text('Universitas Teknologi Bandung'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.computer,
                      color: Color(0xFFD7799D),
                    ),
                    title: Text('Major'),
                    subtitle: Text('Teknik Informatika'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Skills
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'My Skills',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF75475C),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.camera_alt, color: Color(0xFFD7799D)),
                      SizedBox(width: 12),
                      Text('Photography'),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.movie_edit, color: Color(0xFFD7799D)),
                      SizedBox(width: 12),
                      Text('Editing'),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.lightbulb, color: Color(0xFFD7799D)),
                      SizedBox(width: 12),
                      Text('Creative Thinking'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Say Hello!! ',
              style: TextStyle(
                color: Color(0xFF997080),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
