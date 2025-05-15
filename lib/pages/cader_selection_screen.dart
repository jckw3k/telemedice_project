import 'package:flutter/material.dart';
import 'package:telemedice_project/pages/medical_officers_screen.dart';

class CaderSelectionScreen extends StatelessWidget {
  const CaderSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Select a Cader", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
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
              "Frequently used Caders.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            _buildCaderItem(
              context,
              icon: Icons.medical_services_outlined,
              title: "Medical Officers",
              subtitle: "365 available doctors",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MedicalOfficersScreen()),
                );
              },
            ),
            _buildCaderItem(
              context,
              icon: Icons.child_care,
              title: "Child Specialist",
              subtitle: "75 available doctors",
              onTap: () {},
            ),

            const Divider(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Caders",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See more",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            const SizedBox(height: 10),

            _buildCaderItem(
              context,
              icon: Icons.favorite,
              title: "Cardiologist",
              subtitle: "Heart Specialist • 75 available doctors",
              onTap: () {},
            ),
            _buildCaderItem(
              context,
              icon: Icons.psychology_outlined,
              title: "Neurologist",
              subtitle: "Brain Specialist • 33 available doctors",
              onTap: () {},
            ),
            _buildCaderItem(
              context,
              icon: Icons.medical_information_outlined,
              title: "Dentist",
              subtitle: "Dental Surgeon • 119 available doctors",
              onTap: () {},
            ),
            _buildCaderItem(
              context,
              icon: Icons.remove_red_eye_outlined,
              title: "Ophthalmologist",
              subtitle: "Eye Specialist • 102 available doctors",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCaderItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: Colors.blue.shade100,
        child: Icon(icon, color: Colors.blue),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
