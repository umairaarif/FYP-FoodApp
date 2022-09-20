import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/auth_controller.dart';
import 'package:get/get.dart';

class OrderPage extends StatefulWidget {
  OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> with TickerProviderStateMixin {
  late TabController _tabController;
  late bool _isloggedIn;

  @override
  void initState() {
    super.initState();
    _isloggedIn = Get.find<AuthController>().userLoggedIn();
    if (_isloggedIn) {
      _tabController = TabController(length: 2, vsync: this);
      //get order list
      // Get.find<OrderController>().getOrderList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My orders'),
      ),
      body: Center(
        child: Text("This is a body"),
      ),
    );
  }
}
