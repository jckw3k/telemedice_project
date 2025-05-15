import 'package:flutter/material.dart';
import 'package:telemedice_project/pages/appointment_booking_screen.dart';

class MedicalOfficersScreen extends StatelessWidget {
  const MedicalOfficersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> doctors = [
      {
        'name': 'Dr. Chukwunomnso Iwegbu',
        'image': 'images/doc1.png',
        'hospital': 'Columbia Asia Hospital Tebrau',
        'rating': 4.5,
        'reviews': 1031,
      },
      {
        'name': 'Dr. Uchendu Ebuka',
        'image': 'images/doc2.png',
        'hospital': 'Columbia Asia Hospital Tebrau',
        'rating': 4.0,
        'reviews': 1031,
      },
      {
        'name': 'Dr. Chindinma Nwokoro',
        'image': 'images/doc3.png',
        'hospital': 'Columbia Asia Hospital Tebrau',
        'rating': 4.8,
        'reviews': 1031,
      },
      {
        'name': 'Dr. Adekunle Philips',
        'image': 'images/doc4.png',
        'hospital': 'Randle General Hospitals',
        'rating': 4.7,
        'reviews': 1031,
      },
      {
        'name': 'Dr. Ayobami Ayodele',
        'image': 'images/doc5.png',
        'hospital': 'Marigold Hospital',
        'rating': 4.9,
        'reviews': 1031,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Medical Officers",
            style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal.shade100),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Available doctors",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Doctor List
            ...doctors.map((doc) => _buildDoctorCard(context, doc)).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildDoctorCard(BuildContext context, Map<String, dynamic> doctor) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: AssetImage(doctor['image']),
            radius: 25,
          ),
          title: Text(
            doctor['name'],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ...List.generate(
                    5,
                    (index) => Icon(
                      index < doctor['rating'] ? Icons.star : Icons.star_border,
                      size: 16,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text('${doctor['reviews']} Ratings',
                      style: const TextStyle(fontSize: 12)),
                ],
              ),
              const SizedBox(height: 2),
              Text(
                doctor['hospital'],
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AppointmentBookingScreen(),
              ),
            );
          },
        ),
        const Divider(height: 25),
      ],
    );
  }
}
