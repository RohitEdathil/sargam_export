import 'package:flutter/material.dart';
import 'package:sargam_export/constants.dart';

enum Status { choosing, generating, ready }

class GenerateButton extends StatefulWidget {
  final void Function() callback;
  final Status status;
  const GenerateButton({
    Key? key,
    required this.callback,
    required this.status,
  }) : super(key: key);

  @override
  _GenerateButtonState createState() => _GenerateButtonState();
}

class _GenerateButtonState extends State<GenerateButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.callback,
      child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(top: 15),
          width: 400,
          decoration:
              BoxDecoration(color: fg, borderRadius: BorderRadius.circular(10)),
          child: Text(
            widget.status == Status.choosing
                ? "Generate"
                : widget.status == Status.ready
                    ? "Download"
                    : "...",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5!.copyWith(color: bg2),
          )),
    );
  }
}
