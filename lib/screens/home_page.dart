import 'package:apiintegerationsmodel/screens/user_details.dart';
import 'package:apiintegerationsmodel/services/user_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 96, 175),
        title: Text("API INTEGERATION MODEL",
        style: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )
        ),centerTitle: true,
      ),body: Center(
        child: FutureBuilder(
          future: getUsers(),
          builder: ((BuildContext context,AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: Text(snapshot.data[index].id.toString(),
                    style: GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
                    title: Text(snapshot.data[index].name,
                    style: GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                    subtitle: Text(snapshot.data[index].address.city,
                    style: GoogleFonts.raleway(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              UsersDetails(userModel: snapshot.data[index]),
                        ),
                      );
                    },
                  );
                }));
            }
          }
      ),
      ),
    ));
  }
}