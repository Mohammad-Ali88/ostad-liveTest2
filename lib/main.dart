import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DonateBloodScreen(),
    );
  }
}
class DonateBloodScreen extends StatelessWidget {
  const DonateBloodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16),
          ),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: const Text('Need Blood'),
        titleTextStyle: const TextStyle(fontSize: 16, color: Colors.white),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 56,
              backgroundColor: Colors.grey.shade600,
              child: const Icon(Icons.bloodtype_outlined,
                  size: 64, color: Colors.red),
            ),
            const SizedBox(height: 8),
            const Text(
              'Donate Blood',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

