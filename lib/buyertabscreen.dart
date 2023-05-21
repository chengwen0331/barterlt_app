
import 'package:barterlt_app/model/user.dart';
import 'package:flutter/material.dart';


class BuyerTabScreen extends StatefulWidget {
  final User user;

  const BuyerTabScreen({super.key, required this.user});

  @override
  State<BuyerTabScreen> createState() => _BuyerTabScreenState();
}

class _BuyerTabScreenState extends State<BuyerTabScreen> {
  late List<Widget> tabchildren;
  String maintitle = "Buyer";

  @override
    void initState() {
      super.initState();
      print("Buyer");
    }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Buyer'),
          backgroundColor: Colors.amber,
        ),
        body: const Center(
          child: Text('Buyer Page'),
        ),
      ),
    );
  }
}