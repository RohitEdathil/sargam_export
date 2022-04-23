/// Edit this to change events
const eventNames = [
  Event('essayenglish', 'Essay Writing-English', EventType.solo),
  Event('essaymalayalam', 'Essay Writing-Malayalam', EventType.solo),
  Event('essayhindi', 'Essay Writing-Hindi', EventType.solo),
  Event('elocutionenglish', 'Elocution-English', EventType.solo),
  Event('elocutionmalayalam', 'Elocution-Malayalam', EventType.solo),
  Event('elocutionhindi', 'Elocution-Hindi', EventType.solo),
  Event('pencildrawing', 'Pencil Drawing', EventType.solo),
  Event('cartooning', 'Cartooning', EventType.solo),
  Event('storywriting', 'Story Writing', EventType.solo),
  Event('poemwriting', 'Poem writing', EventType.solo),
  Event('meetlove', 'Meet your loved character', EventType.solo),
  Event('trivia', 'Literature Trivia Quiz', EventType.solo),
  Event('spelling', 'Spelling Bee', EventType.solo),
  Event('madads', 'Mad Ads', EventType.solo),
  Event('wordsworth', 'Wordsworth', EventType.solo),
  Event('bookdebate', 'Book Debate', EventType.solo),
  Event('calligraphy', 'Calligraphy', EventType.solo),
  Event('classicalmale', 'Classical-Male', EventType.solo),
  Event('classicalfem', 'Classical-Female', EventType.solo),
  Event('tabla', 'Tabla', EventType.solo),
  Event('mridangam', 'Mridangam', EventType.solo),
  Event('drums', 'Drums', EventType.solo),
  Event('guitar', 'Guitar', EventType.solo),
  Event('violin', 'Violin', EventType.solo),
  Event('veena', 'Veena', EventType.solo),
  Event('keyboard', 'Keyboard', EventType.solo),
  Event('flute', 'Flute', EventType.solo),
  Event('lightmusicmale', 'Light music-male', EventType.solo),
  Event('lightmusicfemale', 'Light music-female', EventType.solo),
  Event('westernvocal', 'Western vocal solo', EventType.solo),
  Event('mappilapattu', 'Mappila Pattu', EventType.solo),
  Event('solosong', 'Solo Song', EventType.solo),
  Event('rechindi', 'Recitation Hindi', EventType.solo),
  Event('receng', 'Recitation English', EventType.solo),
  Event('recmal', 'Recitation Malayalam', EventType.solo),
  Event('rapmal', 'Malayalam Rap', EventType.solo),
  Event('rapeng', 'English Rap', EventType.solo),
  Event('rapeng', 'English Rap', EventType.solo),
  Event('mimicry', 'Mimicry', EventType.solo),
  Event('monoact', 'Monoact', EventType.solo),
  Event('standupcomedy', 'Stand Up Comedy', EventType.solo),
  Event('kadhaprasangam', 'Kadha Prasangam', EventType.solo),
  Event('fancydress', 'Fancy Dress', EventType.solo),
  Event('painting', 'Painting', EventType.solo),
  Event('rangoli', 'Rangoli', EventType.solo),
  Event('sculpturing', 'Sculpturing', EventType.solo),
  Event('claymodel', 'Clay Modeling', EventType.solo),
  Event('beadswork', 'Beads Work', EventType.solo),
  Event('art', 'Art Using Waste Materials', EventType.solo),
  Event('origami', 'Origami(craft works)', EventType.solo),
  Event('bharathanatyam', 'Bharathanatyam', EventType.solo),
  Event('kuchipudi', 'Kuchipudi', EventType.solo),
  Event('mohiniyattam', 'Mohiniyattam', EventType.solo),
  Event('solodance', 'Solo Dance', EventType.solo),
  Event('folk', 'Folk Dance', EventType.solo),
  Event('westernvocalgroup', 'Western Vocal', EventType.group),
  Event('nadanpattu', 'Nadan Pattu', EventType.group),
  Event('groupsong', 'Group Song', EventType.group),
  Event('westerngroupdance', 'Group Dance', EventType.group),
  Event('trio', 'Trio', EventType.group),
  Event('duet', 'Duet', EventType.group),
  Event('mirrordance', 'Mirror Dance', EventType.group),
  Event('thiruvathira', 'Thiruvathira', EventType.group),
  Event('margamkali', 'Margam Kali', EventType.group),
  Event('oppana', 'Oppana', EventType.group),
  Event('mime', 'Mime', EventType.group),
  Event('tableau', 'Tableau', EventType.group),
  Event('skit', 'Skit', EventType.group),
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
  Field('Member 10 name', 'Member 10 Name'),
  Field('Member 11 name', 'Member 11 Name'),
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
