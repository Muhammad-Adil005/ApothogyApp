import 'package:flutter/material.dart';

class customButton extends StatefulWidget {
  final title;
  final double width;
  final double height;
  final Color btcolor;
  final Color txtcolor;
  final double txtsize;
  final VoidCallback callback;
  customButton({
    Key? key,
    this.title = "",
    this.width = 303,
    this.height = 44,
    this.txtsize = 18,
    required this.callback,
    this.btcolor = Colors.blue,
    this.txtcolor = Colors.white,
  }) : super(key: key);

  @override
  _customButtonState createState() => _customButtonState();
}

class _customButtonState extends State<customButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        widget.callback();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
      color: widget.btcolor,
      highlightColor: Colors.blue[200],
      child: Text(
        widget.title,
        style: TextStyle(fontSize: widget.txtsize, color: widget.txtcolor),
      ),
      minWidth: widget.width,
      height: widget.height,
    );
  }
}

void callback() {
  callback();
}
