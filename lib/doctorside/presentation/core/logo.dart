import 'package:doc_online/userside/presentation/core/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

logo() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        'DocOnline',
        style: GoogleFonts.inika(
            fontSize: 35, fontWeight: FontWeight.bold, color: baseColor),
      ),
      const Text(
        'Hospital Panel',
        style: TextStyle(fontSize: 20, color: baseColor),
      )
    ],
  );
}
