import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'global.dart';

void pdfGenerate() async {
  var pdf = pw.Document();
  var image = pw.MemoryImage(
    File("${g1.profileImage}").readAsBytesSync(),
  );

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      margin: const pw.EdgeInsets.all(20),
      build: (pw.Context context) {
        return pw.Padding(
          padding: const pw.EdgeInsets.all(20),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Center(
                child: pw.Image(image),
              ),
              pw.SizedBox(
                height: 20,
              ),
              pw.Text(
                "Name :- ${g1.name}",
                style:
                    pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(
                "Mobile :- ${g1.phone}",
                style:
                    pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(
                "Address :- ${g1.add}",
                style:
                    pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 10),
              pw.Text(
                "Bill Received :- ${g1.date}",
                style:
                    pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 18),
              ),
              pw.SizedBox(
                height: 10,
              ),
              pw.Divider(
                height: 20,
                color: PdfColors.black,
              ),
              pw.SizedBox(height: 10),
              pw.Text(
                "Your Transaction",
                style: pw.TextStyle(
                    color: PdfColors.black,
                    fontWeight: pw.FontWeight.bold,
                    fontSize: 25),
              ),
              pw.SizedBox(
                height: 10,
              ),
              pw.Divider(
                color: PdfColors.black,
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text(
                    "Items",
                    style: const pw.TextStyle(fontSize: 18),
                  ),
                  pw.Text(
                    "Price",
                    style: const pw.TextStyle(fontSize: 18),
                  ),
                ],
              ),
              pw.Divider(color: PdfColors.black),
              pw.SizedBox(height: 10),
              pw.Column(
                  children: g1.l1
                      .map(
                        (e) => pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text(
                              "${e['ItemName']}",
                              style: const pw.TextStyle(fontSize: 18),
                            ),
                            pw.Spacer(),
                            pw.Text(
                              "${e['ItemPrice']} /-",
                              style: const pw.TextStyle(fontSize: 18),
                            ),
                            pw.SizedBox(height: 10),
                            pw.Divider(
                              color: PdfColors.black,
                            ),
                          ],
                        ),
                      )
                      .toList()),
            ],
          ),
        );
      },
    ),
  );

  final file = File("/storage/emulated/0/Download");
  await file.writeAsBytes(await pdf.save());
}
