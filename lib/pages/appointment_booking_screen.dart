import 'package:flutter/material.dart';

class AppointmentBookingScreen extends StatelessWidget {
  const AppointmentBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book An Appointment",
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
            const Text(
              "Confirm a date and time for your appointment with a general practitioner. Include a note as well",
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 20),

            const Text("DOCTOR", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/doc1.png'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Dr. Frank Ufondu.",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("MBBS, BCS, MD (Medical Officer)",
                        style: TextStyle(color: Colors.black54)),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Divider(),

            const Text("LOCATION",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("Columbia Asia Hospital Tebrau",
                style: TextStyle(fontWeight: FontWeight.w600)),
            const Text("23, Jalan Tebrau",
                style: TextStyle(color: Colors.black54)),

            const SizedBox(height: 20),
            const Divider(),

            const Text("DATE & TIME",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            // Date & Time Selector (static for now)
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("22nd Wed, June 2022"),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("9:41 AM"),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("23rd Thur, June 2022"),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("10:00 AM"),
                ),
              ],
            ),

            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Confirm booking or navigate to success page
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Appointment booked successfully!"),
                  ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB2F2E9),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text("Book an Appointment"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
