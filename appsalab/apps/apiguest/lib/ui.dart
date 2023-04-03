import 'package:apiguest/fromjson.dart';
import 'package:apiguest/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    FetchApi fetchApi = FetchApi();
    return Scaffold(
      appBar: AppBar(
        title: Text('welcomgest'),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: fetchApi.fetchGests(),
          builder: (context, snapshot) {
            List<Guests>?gsts = snapshot.data;

            //after geting it view it with litviewbuilde
            return ListView.builder(
                itemCount: gsts!.length,
                itemBuilder: (context, index) {
                  return Text('t');
                }

            );
          }),
    );
  }
}
