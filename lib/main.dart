import 'package:flutter/material.dart';
import 'package:machine_test/project.dart';
import 'package:machine_test/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Newprovider(),
      child:const MaterialApp(
        home: Myproject(),
      ),
    );
  }
}

class Myproject extends StatelessWidget {
  const Myproject({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Newprovider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(hintText: prov.hintexxt),
          ),
          DropdownButton(
              value: prov.dropdownvalue,
              items: prov.items.map((String item) {
                return DropdownMenuItem(value: item, child: Text(item));
              }).toList(),
              onChanged: (String? newvalue) {
                prov.dropdownvalue = newvalue!;
                prov.dropdosnfun();
              }),
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Newpage()));
            },
            child: const Text('enter'),
          )
        ],
      ),
    );
  }
}
