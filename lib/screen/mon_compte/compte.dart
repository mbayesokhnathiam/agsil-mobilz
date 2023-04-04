import 'package:ajiledakarv/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MonCompte extends StatelessWidget {
  const MonCompte({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
              height: 100,
              width: 100,
              child: const CircleAvatar(
               backgroundImage: AssetImage('assets/images/casa.jpeg'),
              ),
              
            ),
            Text('Mathy Ndiaye' , style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20 , vertical: 5),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                              color: Colors.grey[300],
            
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Inviter des amis' , style: GoogleFonts.inter( 
                      fontSize: 14,
            
                    ),),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20 , vertical: 5),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                              color: Colors.grey[300],
            
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Mes Préférences' , style: GoogleFonts.inter( 
                      fontSize: 14,
            
                    ),),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20 , vertical: 5),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                              color: Colors.grey[300],
            
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Se deconnecter' , style: GoogleFonts.inter( 
                      fontSize: 14,
            
                    ),),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
          ],
        ), 
    );
  }
}