import 'package:flutter/material.dart';
import 'package:sargam_export/constants.dart';
import 'package:sargam_export/data/values.dart';

class DataChooser extends StatefulWidget {
  final Color background;
  final Color foreground;
  final Function(String?) callback;
  const DataChooser(
      {Key? key,
      required this.background,
      required this.foreground,
      required this.callback})
      : super(key: key);

  @override
  _DataChooserState createState() => _DataChooserState();
}

class _DataChooserState extends State<DataChooser> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Event",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.white),
        ),
        const SizedBox(width: 10),
        DropdownButton<String>(
          borderRadius: BorderRadius.circular(10),
          value: eventNames.keys.first,
          underline: null,
          dropdownColor: bg1,
          focusColor: bg2,
          items: [
            for (var event in eventNames.keys)
              DropdownMenuItem<String>(
                value: event,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(eventNames[event]!,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.white)),
                ),
              )
          ],
          onChanged: (s) => widget.callback(s),
        ),
      ],
    );
  }
}
