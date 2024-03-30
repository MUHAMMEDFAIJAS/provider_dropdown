import 'package:flutter/material.dart';
import 'package:machine_test/provider.dart';
import 'package:provider/provider.dart';

class Newpage extends StatelessWidget {
  const Newpage({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Newprovider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(hintText: prov.hintexxt),
            )
          ],
        ),
      ),
    );
  }
}
