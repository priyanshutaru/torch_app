// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class TorchLite extends StatefulWidget {
  const TorchLite({super.key});

  @override
  State<TorchLite> createState() => _TorchLiteState();
}

class _TorchLiteState extends State<TorchLite> {
  var isActive = false;
  var controller = TorchController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 52, 50, 50),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   centerTitle: true,
      //   title: Text(
      //     "Torch Lite",
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    isActive ? 'images/ton.png' : 'images/toff.png',
                    height: 200,
                    width: 200,
                    color: isActive ? null : Colors.black.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  CircleAvatar(
                    minRadius: 40,
                    maxRadius: 40,
                    child: Transform.scale(
                      scale: 1.5,
                      child: IconButton(
                        onPressed: () {
                          controller.toggle();
                          isActive = !isActive;
                          setState(() {});
                        },
                        icon: Icon(Icons.offline_bolt_outlined),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            "Powered by  Priyanshu",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
        ],
      ),
    );
  }
}
