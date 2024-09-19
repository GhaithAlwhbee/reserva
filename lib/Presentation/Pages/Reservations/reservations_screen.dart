import 'package:flutter/material.dart';
import 'package:reserva/Core/Global%20Widgets/custom_app_bar.dart';

class ReservationsScreen extends StatefulWidget {
  const ReservationsScreen({super.key});

  @override
  State<ReservationsScreen> createState() => _ReservationsScreenState();
}

class _ReservationsScreenState extends State<ReservationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          context: context, title: 'Restaurants', backButton: true,searchButton: true),
      body: Center(
      child: Text('Reservations screen'),
    ),
    );
  }
}