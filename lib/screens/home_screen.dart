import 'package:flutter/material.dart';
import 'package:otp1/provider/auth_provider.dart';
import 'package:otp1/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 79, 59, 194),
        title: const Text("OTP Auth FLUTTER"),
        actions: [
          IconButton(
            onPressed: () {
              ap.userSignOut().then(
                    (value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreen(),
                      ),
                    ),
                  );
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 90),
          CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 60, 47, 177),
            backgroundImage: NetworkImage(ap.userModel.profilePic),
            radius: 70,
          ),
          const SizedBox(height: 50),
          Text(ap.userModel.name),
          const SizedBox(height: 10),
          Text(ap.userModel.phoneNumber),
          const SizedBox(height: 10),
          Text(ap.userModel.email),
          const SizedBox(height: 10),
          Text(ap.userModel.bio),
        ],
      )),
    );
  }
}
