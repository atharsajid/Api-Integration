import 'package:api/Services/services.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
        ),
        body: FutureBuilder(
            future: getuser(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Center(child: const CircularProgressIndicator());
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Text("${snapshot.data[index].id}"),
                        title: Text(snapshot.data[index].name),
                        subtitle: Text(
                            "User Name:${snapshot.data[index].username} Address${snapshot.data[index].address}"),
                      );
                    });
              }
            }));
  }
}
