import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Calendar", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Appointments",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            const Text("See all your appointments",
                style: TextStyle(color: Colors.black54)),

            const SizedBox(height: 20),

            // Toggle View Buttons (optional)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {}, // List view
                  icon: const Icon(Icons.view_list_outlined),
                ),
                IconButton(
                  onPressed: () {}, // Calendar view
                  icon: const Icon(Icons.calendar_today_outlined),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // Static Week View
            SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(7, (index) {
                  final day = DateTime.now().add(Duration(days: index - 2));
                  final dayStr =
                      ["S", "M", "T", "W", "T", "F", "S"][day.weekday % 7];
                  final selected = index == 2; // middle is selected
                  return GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Text(dayStr),
                        const SizedBox(height: 5),
                        CircleAvatar(
                          backgroundColor:
                              selected ? Colors.blue : Colors.transparent,
                          child: Text(
                            day.day.toString(),
                            style: TextStyle(
                              color: selected ? Colors.white : Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),

            const SizedBox(height: 30),
            const Text("12 PM",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blueAccent)),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                "Appointment with Dr. Frank Ufondu",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
