/// Edit this to change events
const eventNames = [
  Event('Group Song', 'Group Song', EventType.group),
  Event('essayhindi', 'Hindi Essay', EventType.solo),
];

/// Edit this to change the fields of solo events.
const soloScheme = [
  Field('dept', 'Department'),
  Field('email', 'Email'),
  Field('name', 'Name'),
  Field('sem', 'Semester'),
  Field('phone', 'Phone Number'),
  Field('trvid', 'KTU ID'),
];

/// Edit this to change the fields of group events.
const groupScheme = [
  Field('Class Roll Number', 'Class Roll Number'),
  Field('Group Leader', 'Group Leader'),
  Field('dept', 'Department'),
  Field('phone', 'Phone Number'),
  Field('sem', 'Semester'),
  Field('Member 1 name', 'Member 1 Name'),
  Field('Member 2 name', 'Member 2 Name'),
  Field('Member 3 name', 'Member 3 Name'),
  Field('Member 4 name', 'Member 4 Name'),
  Field('Member 5 name', 'Member 5 Name'),
  Field('Member 6 name', 'Member 6 Name'),
  Field('Member 7 name', 'Member 7 Name'),
  Field('Member 8 name', 'Member 8 Name'),
  Field('Member 9 name', 'Member 9 Name'),
];

/// A data class to store event information.
class Event {
  final String shortName;
  final String fairName;
  final EventType type;
  const Event(this.shortName, this.fairName, this.type);
}

/// Types of events.
enum EventType { solo, group }

/// A data class to store field information.
class Field {
  final String name;
  final String displayName;
  const Field(this.name, this.displayName);
}
