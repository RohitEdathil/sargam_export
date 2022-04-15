import 'package:sargam_export/data/values.dart';
import 'package:firebase/firebase.dart';
import 'package:excel/excel.dart';

Future<List<int>?> generator(Event dataset) async {
  // Queries data
  final db = database();
  final ref = dataset.type == EventType.solo
      ? db.ref('soloevents').child(dataset.shortName)
      : db.ref('groupevents').child(dataset.shortName);
  final data = (await ref.once('value')).snapshot;

  // Prepares .xlsl
  final excel = Excel.createExcel();
  final sheet = excel['Sheet1'];
  final dataScheme = dataset.type == EventType.solo ? soloScheme : groupScheme;

  // Writes Data
  sheet.appendRow(dataScheme.map((field) => field.displayName).toList());
  data.forEach((rowData) {
    List row = [];
    for (var element in dataScheme) {
      row.add(rowData.child(element.name).val());
    }
    sheet.appendRow(row);
  });

  return excel.encode();
}
