import 'package:flutter/material.dart';
import 'package:telemedice_project/pages/cader_selection_screen.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Appointments", style: TextStyle(color: Colors.black)),
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
            const Text(
              "What is the patient’s current location?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "This would help us connect you with the best available licensed Doctor for that location on our platform.",
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 15),
            Row(
              children: const [
                Icon(Icons.location_on, color: Colors.red),
                SizedBox(width: 5),
                Text("UTM, Skudai, Johor",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                Text("Change", style: TextStyle(color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "What's the type of appointment you\nwould like to make?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Two selection cards
            Row(
              children: [
                SizedBox(
                  width: 160,
                  height: 140,
                  child: GestureDetector(
                    onTap: () {}, // set active state if needed
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue.shade100),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.local_hospital,
                              color: Colors.blue, size: 30),
                          SizedBox(height: 10),
                          Text(
                            "In-Person\nMedical Consultation",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  width: 160,
                  height: 140,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.green.shade200),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.directions_car,
                              color: Colors.green, size: 30),
                          SizedBox(height: 10),
                          Text(
                            "Virtual Medical\nConsultation",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CaderSelectionScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFFB2F2E9),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text("Next — Select a Cader  →"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
