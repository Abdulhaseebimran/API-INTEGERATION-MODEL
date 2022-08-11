import 'package:apiintegerationsmodel/models/users_models.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class UsersDetails extends StatelessWidget {
  const UsersDetails({Key? key,
   required this.userModel}) :
    super(key: key);
  
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: const Color.fromARGB(255, 0, 96, 175),
        title: Text("USER ID : ${userModel.id}",
        style: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),), centerTitle: true,
      ),body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("USER INFORMATION",
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontSize: 33,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
           const SizedBox(height: 10,),
             Text("ID : ${userModel.id}",
             style: GoogleFonts.raleway(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
            Text("UserName : ${userModel.username}",
             style: GoogleFonts.raleway(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
            Text("Email : ${userModel.email}",
             style: GoogleFonts.raleway(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
            Text("Phone : ${userModel.phone}",
             style: GoogleFonts.raleway(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
            Text("Website : ${userModel.website}",
             style: GoogleFonts.raleway(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
           const SizedBox(height: 20,),
             Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ADDRESS",
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontSize: 33,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            const SizedBox(height: 10,),
             Text("Street : ${userModel.address!.street}",
             style: GoogleFonts.raleway(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("Suite : ${userModel.address!.suite}",
                  style: GoogleFonts.raleway(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("ZipCode : ${userModel.address!.zipcode}",
                  style: GoogleFonts.raleway(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("City : ${userModel.address!.city}",
                  style: GoogleFonts.raleway(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("Geograpghy Data : ${userModel.address!.geo!.lat}",
                  style: GoogleFonts.raleway(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("Geograpghy Data : ${userModel.address!.geo!.lng}",
                  style: GoogleFonts.raleway(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
            ],
              ),
             ),const SizedBox(height: 20,),
             Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("COMPANY",
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontSize: 33,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            const SizedBox(height: 10,),
              Text("CompanyName : ${userModel.company!.name}",
              style: GoogleFonts.raleway(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("CompanyName : ${userModel.company!.bs}",
                  style: GoogleFonts.raleway(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("CompanyName : ${userModel.company!.catchPhrase}",
                  style: GoogleFonts.raleway(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
            ],
              ),
             )
          ],
        ),
      ),
    );
  }
}