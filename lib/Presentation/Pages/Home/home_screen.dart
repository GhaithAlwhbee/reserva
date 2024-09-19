import 'package:flutter/material.dart';
import 'package:reserva/Core/Global%20Widgets/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          context: context, title: 'Restaurants', backButton: true,searchButton: true,),
      body: Center(
      child: Text('home screen'),
    ),
    );
  }
}