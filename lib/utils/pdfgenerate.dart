// import 'dart:io';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
//
// import 'global.dart';

// void pdfGenerate() async {
//   var pdf = pw.Document();
//   var image = await pw.MemoryImage(
//     File("${g1.profileImage}").readAsBytesSync(),
//   );
//
//   pdf.addPage(
//     pw.Page(
//       pageFormat: PdfPageFormat.a4,
//       margin: const pw.EdgeInsets.all(20),
//       build: (pw.Context context) {
//         return pw.Padding(
//           padding: const pw.EdgeInsets.all(20),
//           child: pw.Column(
//             crossAxisAlignment: pw.CrossAxisAlignment.start,
//             children: [
//               pw.Row(
//                 mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                 children: [
//                   pw.Column(
//                     crossAxisAlignment: pw.CrossAxisAlignment.start,
//                     children: [
//                       pw.Text(
//                         "Name :- ${g1.contactName}",
//                         style: pw.TextStyle(
//                             fontSize: 20, fontWeight: pw.FontWeight.bold),
//                       ),
//                       pw.Text(
//                         "E-mail :- ${g1.contactEmail}",
//                         style: pw.TextStyle(
//                             fontWeight: pw.FontWeight.bold, fontSize: 16),
//                       ),
//                       pw.Text(
//                         "Mobile :- ${g1.contactPhone}",
//                         style: pw.TextStyle(
//                             fontWeight: pw.FontWeight.bold, fontSize: 16),
//                       ),
//                       pw.Text(
//                         "Address :- ${g1.contactAdd}",
//                         style: pw.TextStyle(
//                             fontWeight: pw.FontWeight.bold, fontSize: 16),
//                       ),
//                     ],
//                   ),
//                   pw.Image(image),
//                 ],
//               ),
//               pw.SizedBox(
//                 height: 20,
//               ),
//               pw.Divider(
//                 height: 10,
//                 thickness: 2,
//               ),
//               pw.SizedBox(
//                 height: 10,
//               ),
//               pw.Text(
//                 "Carrier Objective",
//                 style: pw.TextStyle(
//                     fontSize: 23,
//                     fontWeight: pw.FontWeight.bold,
//                     decoration: pw.TextDecoration.underline,
//                     decorationStyle: pw.TextDecorationStyle.solid),
//               ),
//               pw.SizedBox(height: 10),
//               pw.Column(
//                 crossAxisAlignment: pw.CrossAxisAlignment.start,
//                 children: [
//                   pw.Text(
//                     "Course :- ${g1.carrierCourse}",
//                     style: const pw.TextStyle(fontSize: 16),
//                   ),
//                   pw.Text(
//                     "Work Experience :- ${g1.carrierExp}",
//                     style: const pw.TextStyle(fontSize: 16),
//                   ),
//                 ],
//               ),
//               pw.SizedBox(height: 10),
//               pw.Divider(
//                 height: 10,
//                 color: PdfColors.black,
//                 thickness: 2,
//               ),
//               pw.SizedBox(
//                 height: 10,
//               ),
//               pw.Text(
//                 "Personal Details",
//                 style: pw.TextStyle(
//                     fontSize: 23,
//                     fontWeight: pw.FontWeight.bold,
//                     decoration: pw.TextDecoration.underline,
//                     decorationStyle: pw.TextDecorationStyle.solid),
//               ),
//               pw.SizedBox(height: 10),
//               pw.Column(
//                 crossAxisAlignment: pw.CrossAxisAlignment.start,
//                 children: [
//                   pw.Text(
//                     "Date Of Birth :- ${g1.personalDob}",
//                     style: const pw.TextStyle(
//                       fontSize: 16,
//                     ),
//                   ),
//                   pw.Text(
//                     "Marital Status :- ${g1.status}",
//                     style: const pw.TextStyle(
//                       fontSize: 16,
//                     ),
//                   ),
//                   pw.Text(
//                     "Language Known :- ",
//                     style: const pw.TextStyle(
//                       fontSize: 16,
//                     ),
//                   ),
//                   pw.Column(
//                     children: [
//                       g1.isEnglish == true
//                           ? pw.Text("English",
//                           style: const pw.TextStyle(
//                             fontSize: 16,
//                           ))
//                           : pw.Text(""),
//                       g1.isHindi ==true ?pw.Text("Hindi",
//                           style: const pw.TextStyle(
//                             fontSize: 16,
//                           ))
//                           : pw.Text(""),
//                       g1.isGujarati ==true ?pw.Text("Gujarati",
//                           style: const pw.TextStyle(
//                             fontSize: 16,
//                           ))
//                           : pw.Text(""),
//                     ],
//                   ),
//                   pw.Text(
//                     "Nationality :- ${g1.personalNation}",
//                     style: const pw.TextStyle(fontSize: 16),
//                   ),
//                 ],
//               ),
//               pw.SizedBox(height: 10),
//               pw.Divider(
//                 height: 10,
//                 color: PdfColors.black,
//                 thickness: 2,
//               ),
//               pw.Text(
//                 "Education Details",
//                 style: pw.TextStyle(
//                     fontSize: 23,
//                     fontWeight: pw.FontWeight.bold,
//                     decoration: pw.TextDecoration.underline,
//                     decorationStyle: pw.TextDecorationStyle.solid),
//               ),
//               pw.Text("Course/Degree :- ${g1.eduCourse}"),
//               pw.Text("School/College/Institute :- ${g1.eduClg}"),
//               pw.Text("School/College/Institute :- ${g1.eduPr}"),
//               pw.Text("Year Of Pass :- ${g1.eduYear}"),
//               pw.SizedBox(height: 10),
//               pw.Divider(
//                 height: 10,
//                 color: PdfColors.black,
//                 thickness: 2,
//               ),
//               pw.Text(
//                 "Experience Details",
//                 style: pw.TextStyle(
//                     fontSize: 23,
//                     fontWeight: pw.FontWeight.bold,
//                     decoration: pw.TextDecoration.underline,
//                     decorationStyle: pw.TextDecorationStyle.solid),
//               ),
//               pw.SizedBox(height: 10),
//               pw.Text("Course/Degree :- ${g1.expCompName}"),
//               pw.Text("School/College/Institute :- ${g1.expCompClg}"),
//               pw.Text("Your Role :- ${g1.expCompRoles}"),
//               pw.Text("Date You Join :- ${g1.expCompDoj}"),
//               pw.Text("Date You Exit :- ${g1.expCompDoe}"),
//               pw.SizedBox(height: 10),
//               pw.Divider(
//                 height: 10,
//                 color: PdfColors.black,
//                 thickness: 2,
//               ),
//               pw.Text(
//                 "About Of Your Technical Skills",
//                 style: pw.TextStyle(
//                     fontSize: 23,
//                     fontWeight: pw.FontWeight.bold,
//                     decoration: pw.TextDecoration.underline,
//                     decorationStyle: pw.TextDecorationStyle.solid),
//               ),
//               pw.SizedBox(height: 10),
//
//               pw.SizedBox(height: 10),
//               pw.Divider(
//                 height: 10,
//                 color: PdfColors.black,
//                 thickness: 2,
//               ),
//               pw.Text(
//                 "Projects Details",
//                 style: pw.TextStyle(
//                     fontSize: 23,
//                     fontWeight: pw.FontWeight.bold,
//                     decoration: pw.TextDecoration.underline,
//                     decorationStyle: pw.TextDecorationStyle.solid),
//               ),
//               pw.SizedBox(height: 10),
//               pw.Text("Project Title :- ${g1.proTitle}"),
//               pw.Column(
//                 children: [
//                   g1.isC == true
//                       ? pw.Text("C",
//                     style: const pw.TextStyle(
//                       fontSize: 16,
//                     ),)
//                       : pw.Text(""),
//                   g1.isCpp ==true ?pw.Text("C++",
//                     style: const pw.TextStyle(
//                       fontSize: 16,
//                     ),)
//                       : pw.Text(""),
//                   g1.isFlutter ==true ?pw.Text("Flutter",
//                     style: const pw.TextStyle(
//                       fontSize: 16,
//                     ),)
//                       : pw.Text(""),
//                 ],
//               ),
//               pw.Text("Project Roles :- ${g1.proRoles}"),
//               pw.Text("Project Technologies :- ${g1.proTech}"),
//               pw.Text("Project Description :- ${g1.proDesc}"),
//               pw.SizedBox(height: 10),
//               pw.Divider(
//                 height: 10,
//                 color: PdfColors.black,
//                 thickness: 2,
//               ),
//               pw.Text(
//                 "Achievements",
//                 style: pw.TextStyle(
//                     fontSize: 23,
//                     fontWeight: pw.FontWeight.bold,
//                     decoration: pw.TextDecoration.underline,
//                     decorationStyle: pw.TextDecorationStyle.solid),
//               ),
//               pw.SizedBox(height: 10),
//               pw.Divider(
//                 height: 10,
//                 color: PdfColors.black,
//                 thickness: 2,
//               ),
//               pw.Text(
//                 "Reference",
//                 style: pw.TextStyle(
//                     fontSize: 23,
//                     fontWeight: pw.FontWeight.bold,
//                     decoration: pw.TextDecoration.underline,
//                     decorationStyle: pw.TextDecorationStyle.solid),
//               ),
//               pw.SizedBox(height: 10),
//               pw.Text("Reference Name :- ${g1.refeName}"),
//               pw.Text("Designation :- ${g1.refeDesi}"),
//               pw.Text("Organization/Institute :- ${g1.refeOrg}"),
//               pw.SizedBox(height: 10),
//               pw.Divider(
//                 height: 10,
//                 color: PdfColors.black,
//                 thickness: 2,
//               ),
//               pw.Text(
//                 "Declaration",
//                 style: pw.TextStyle(
//                     fontSize: 23,
//                     fontWeight: pw.FontWeight.bold,
//                     decoration: pw.TextDecoration.underline,
//                     decorationStyle: pw.TextDecorationStyle.solid),
//               ),
//               pw.SizedBox(height: 10),
//             ],
//           ),
//         );
//       },
//     ),
//   );
//   final file = File("/storage/emulated/0/Download");
//   await file.writeAsBytes(await pdf.save());
// }