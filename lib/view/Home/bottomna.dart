import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:qcoin/screens/Home/profile.dart';
import 'package:qcoin/screens/Home/qrscanner.dart';
import 'package:qcoin/screens/Home/Trending/trending.dart';
import 'package:qcoin/screens/Home/Wallet/wallet.dart';
import 'package:qcoin/utils/style.dart';

import '../../utils/const.dart';
import 'dashboard.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  Widget dashbaord = DashBoard();
  Widget trending = Trending();
  Widget wallet = Wallet();
  Widget qrscanner = QrScanner();
  Widget profile = Profile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: selectedIndex,
          selectedColor: Colors.black,
          unSelectedColor: Colors.grey,

          items: [
            CustomNavigationBarItem(
              icon: const Icon(Icons.home_filled),
                selectedIcon: Container(
                  height: 10,width: 10,
                  decoration: const BoxDecoration(
                    color: lightGreen,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                selectedTitle: const Text("Home",style: TextStyle(color: darkGreen,fontWeight: FontWeight.w500),)
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.flash_on),
                selectedIcon: Container(
                  height: 10,width: 10,
                  decoration: const BoxDecoration(
                    color: lightGreen,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                selectedTitle: const Text("Trending",style: TextStyle(color: darkGreen,fontWeight: FontWeight.w500),)
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.wallet_outlined),
                selectedIcon: Container(
                  height: 10,width: 10,
                  decoration: const BoxDecoration(
                    color: lightGreen,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                selectedTitle: Text("Wallet",style: TextStyle(color: darkGreen,fontWeight: FontWeight.w500),)
            ),
            CustomNavigationBarItem(
              icon: Icon(Icons.qr_code),
              selectedIcon: Container(
                height: 10,width: 10,
                decoration: const BoxDecoration(
                    color: buttonColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              selectedTitle: const Text("QR Scanner",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w500),)
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.account_circle),
                selectedIcon: Container(
                  height: 10,width: 10,
                  decoration: const BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                selectedTitle: Text("Profile",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w500),)
            ),
          ],
          onTap: (int index){
          onTapHandler(index);
          },
      ),
    );
  }
  Widget getBody( )  {
    if(selectedIndex == 0) {
      return dashbaord;
    } else if(selectedIndex==1) {
      return trending;
    } else if(selectedIndex == 2){
      return wallet;
    }else if(selectedIndex == 3){
      return qrscanner;
    }else{
      return profile;
    }
  }
  void onTapHandler(int index)  {
    this.setState(() {
      this.selectedIndex = index;
    });
  }
}
