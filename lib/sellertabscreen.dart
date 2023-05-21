
import 'package:barterlt_app/model/user.dart';
import 'package:flutter/material.dart';


class SellerTabScreen extends StatefulWidget {
  final User user;

  const SellerTabScreen({super.key, required this.user});

  @override
  State<SellerTabScreen> createState() => _SellerTabScreenState();
}

class _SellerTabScreenState extends State<SellerTabScreen> {
  late List<Widget> tabchildren;
  String maintitle = "Seller";

  @override
    void initState() {
      super.initState();
      print("Seller");
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
          title: const Text('Seller'),
          backgroundColor: Colors.amber,
        ),
        body: const Center(
          child: Text('Seller Page'),
        ),
      ),
    );
  }
}