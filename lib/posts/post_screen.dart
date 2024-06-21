import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_tasks/UI/login_screen.dart';
import 'package:firebase_tasks/utils/utils.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('post screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {
          auth.signOut().then((value){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
          }).onError((error, stackTrace) {
            Utils().toastMessage(error.toString());
          });
          }, icon: const Icon(Icons.logout_outlined)),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
