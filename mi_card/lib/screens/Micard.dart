import 'package:flutter/material.dart';

class Micard extends StatelessWidget {
  const Micard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepOrange,
        body: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/avatar.jpg"),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Dev",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const Text(
                    "Flutter Developer",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  const SizedBox(height: 50),
                  TextField(
                    controller: TextEditingController(text: "+84 9237127471"),
                    enabled: false,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      labelText: "Số điện thoại",
                      labelStyle: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                  const SizedBox(height: 50),
                  TextField(
                    controller: TextEditingController(
                      text: "abc.22it#vku.udn.vn",
                    ),
                    enabled: false,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.mail),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
