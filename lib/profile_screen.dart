import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = "John Doe";
  int age = 8;
  String gender = "Boy";

  late TextEditingController nameController;
  late TextEditingController ageController;

  List<String> genderOptions = ['Boy', 'Girl'];
  String? selectedGender;
  late String selectedAvatar;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: name);
    ageController = TextEditingController(text: age.toString());
    loadProfileData();
  }

  Future<void> loadProfileData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? name;
      age = prefs.getInt('age') ?? age;
      gender = prefs.getString('gender') ?? gender;
      nameController.text = name;
      ageController.text = age.toString();
      selectedGender = gender;
      // Update the selectedAvatar based on the loaded gender
      selectedAvatar =
          (gender == 'Boy') ? "assets/boy.png.jpg" : "assets/girl.png.jpg";
    });
  }

  Future<void> saveProfileData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
    await prefs.setInt('age', age);
    await prefs.setString('gender', gender);
  }

  void updateProfile() {
    setState(() {
      name = nameController.text;
      age = int.tryParse(ageController.text) ?? 0;
      gender = selectedGender ?? 'Boy';
      // Update the selectedAvatar based on the updated gender
      selectedAvatar =
          (gender == 'Boy') ? "assets/boy.png.jpg" : "assets/girl.png.jpg";
    });
    saveProfileData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.lightBlue,
                child: Image.asset(
                  selectedAvatar,
                  width: 120,
                  height: 120,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Name:',
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(
                controller: nameController,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              const Text(
                'Age:',
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(
                controller: ageController,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              const Text(
                'Gender:',
                style: TextStyle(fontSize: 20),
              ),
              DropdownButtonFormField<String>(
                value: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                    // Update the selectedAvatar when gender is changed
                    selectedAvatar = (value == 'Boy')
                        ? "assets/boy.png.jpg"
                        : "assets/girl.png.jpg";
                  });
                },
                items: genderOptions.map((gender) {
                  return DropdownMenuItem<String>(
                    value: gender,
                    child: Text(gender),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: updateProfile,
                child: const Text(
                  'Update Profile',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    super.dispose();
  }
}
