# sargam_export

A simple utility to export the names of registrants to an excel file.

# Edit the following file to configure the export:

`lib/data/values.dart`

```dart
/// A map containing the short names and fair names of all events.
/// Edit this to change events
const eventNames = {
  'lmusic': 'Light Music',
};

/// A map containing the short names and fair names of all fields.
/// Edit this to change the fields
const dataScheme = {
  'dept': 'Department',
  'email': 'Email',
  'name': 'Name',
  'sem': 'Semester',
  'trvid': 'KTU ID',
};

```
