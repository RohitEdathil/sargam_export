import 'package:sargam_export/data/values.dart';
import 'package:firebase/firebase.dart';
import 'package:excel/excel.dart';

Future<List<int>?> generator(String dataset) async {
  // Queries data
  final db = database();
  final ref = db.ref(dataset);
  final data = (await ref.once('value')).snapshot;

  // Prepares .xlsl
  final excel = Excel.createExcel();
  final sheet = excel['Sheet1'];

  // Writes Data
  sheet.appendRow(dataScheme.values.toList());
  data.forEach((rowData) {
    List row = [];
    for (var element in dataScheme.keys) {
      row.add(rowData.child(element).val());
    }
    sheet.appendRow(row);
  });

  return excel.encode();
}
