import 'package:flutter/material.dart';
import 'package:pushnotification/services/messaging_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _messagingServices = MessagingService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Notification')),
      body: const Center(child: Text('Welcome')),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _messagingServices.init(context);
  }
}
