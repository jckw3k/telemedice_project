import 'package:flutter/material.dart';
import 'package:telemedice_project/pages/home.dart';

class BasicInfoScreen extends StatefulWidget {
  const BasicInfoScreen({super.key});

  @override
  State<BasicInfoScreen> createState() => _BasicInfoScreenState();
}

class _BasicInfoScreenState extends State<BasicInfoScreen> {
  String selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              // Logo + Title
              Center(
                child: Row(
                  children: [
                    Image.asset('images/logo.png', width: 80),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          'MediTap',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1D3557),
                          ),
                        ),
                        const Text(
                          'Healthcare at your fingertips -\ntap and connect',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const Center(
                child: Column(
                  children: [
                    Text(
                      'Basic Information',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Please tell us some basic\ninformation:',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(height: 10),
                    LinearProgressIndicator(
                      value: 0.5,
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Color.fromARGB(255, 50, 92, 235)),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // First Name
              const Text('First Name'),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  hintText: 'First Name',
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Last Name
              const Text('Last Name'),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Last Name',
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Date of Birth
              const Text('Date of birth'),
              const SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        hintText: 'Month',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      items: ['January', 'February', 'March', 'April']
                          .map((month) {
                        return DropdownMenuItem<String>(
                          value: month,
                          child: Text(month),
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Day',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Year',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Phone Number
              const Text('Phone number'),
              const SizedBox(height: 5),
              Row(
                children: [
                  DropdownButton<String>(
                    value: 'MY',
                    items: const [
                      DropdownMenuItem(value: 'MY', child: Text('MY')),
                      DropdownMenuItem(value: 'SG', child: Text('SG')),
                      DropdownMenuItem(value: 'TH', child: Text('TH')),
                    ],
                    onChanged: (val) {},
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '18-475-4658',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Gender
              const Text('Gender'),
              const SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedGender = 'Male';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedGender == 'Male'
                            ? Colors.black
                            : Colors.white,
                        foregroundColor: selectedGender == 'Male'
                            ? Colors.white
                            : Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        side: const BorderSide(color: Colors.black12),
                      ),
                      child: const Text('Male'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedGender = 'Female';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedGender == 'Female'
                            ? Colors.black
                            : Colors.white,
                        foregroundColor: selectedGender == 'Female'
                            ? Colors.white
                            : Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        side: const BorderSide(color: Colors.black12),
                      ),
                      child: const Text('Female'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Create Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Home()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFFB2F2E9),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: const Text('Create'),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
