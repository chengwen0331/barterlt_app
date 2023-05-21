
import 'package:barterlt_app/chatscreen.dart';
import 'package:barterlt_app/buyertabscreen.dart';
import 'package:barterlt_app/homescreen.dart';
import 'package:barterlt_app/sellertabscreen.dart';
import 'package:barterlt_app/model/user.dart';
import 'package:flutter/material.dart';
import 'profiletabscreen.dart';


class MainScreen extends StatefulWidget {
  final User user;
  const MainScreen({super.key, required this.user});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Widget> tabchildren;
  int _currentIndex = 0;
  String maintitle = "Home";

  @override
    void initState() {
      super.initState();
      tabchildren = [

      HomeScreen(user: widget.user,),
      BuyerTabScreen(user: widget.user,),
      SellerTabScreen(user: widget.user,),
      ChatScreen(user: widget.user,),
      ProfileTabScreen(user: widget.user,),
    ];
    }

    @override
    void dispose(){
      super.dispose();
      print("dispose");
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabchildren[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        selectedItemColor: Colors.amber, // Set the desired color for the selected icon
        unselectedItemColor: Color.fromARGB(255, 65, 65, 65),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, ),
              label: "HOME"),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money, ),
              label: "BUYER"),
          BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory, ),
              label: "SELLER"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat, ), 
              label: "MESSAGE"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, ), 
              label: "PROFILE")
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    //print(index);
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0) {
        maintitle = "Home";
      }
      if (_currentIndex == 1) {
        maintitle = "Buyer";
      }
      if (_currentIndex == 2) {
        maintitle = "Seller";
      }
      if (_currentIndex == 3) {
        maintitle = "Message";
      }
      if (_currentIndex == 3) {
        maintitle = "Profile";
      }
    });
  }
}
