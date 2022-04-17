import 'package:flutter/material.dart';
import 'package:sargam_export/constants.dart';
import 'package:sargam_export/data/values.dart';

class DataChooser extends StatefulWidget {
  final Color background;
  final Color foreground;
  final Event current;
  final Function(Event?) callback;
  const DataChooser(
      {Key? key,
      required this.background,
      required this.foreground,
      required this.current,
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
        DropdownButton<Event>(
          borderRadius: BorderRadius.circular(10),
          value: widget.current,
          underline: null,
          dropdownColor: bg1,
          focusColor: bg2,
          items: [
            for (var event in eventNames)
              DropdownMenuItem<Event>(
                value: event,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(event.fairName,
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
