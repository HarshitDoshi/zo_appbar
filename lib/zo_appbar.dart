library zo_appbar;
import 'package:flutter/material.dart';

class ZOAppBar extends StatefulWidget implements PreferredSizeWidget {
  ZOAppBar(
    this.elevation,
    this.primaryText,
    this.textSymbol,
    this.secondaryText,
    this.textColor,
    this.appBarGradientColors,
    this.brightness,
    this.actionIconButtons,
  );

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50.0);

  final double elevation;
  final String primaryText;
  final String textSymbol;
  final String secondaryText;
  final Color textColor;
  final List<Color> appBarGradientColors;
  final Brightness brightness;
  final List<Widget> actionIconButtons;

  @override
  _ZOAppBarState createState() => _ZOAppBarState();
}

class _ZOAppBarState extends State<ZOAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: widget.elevation,
      title: RichText(
        text: TextSpan(
          text: widget.primaryText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 28.0,
            color: widget.textColor,
          ),
          children: <TextSpan>[
            TextSpan(
              text: widget.textSymbol,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            TextSpan(
              text: widget.secondaryText,
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: widget.appBarGradientColors,
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 1.0),
            stops: [0.0, 0.33, 0.66, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
      ),
      brightness: widget.brightness,
      actions: widget.actionIconButtons,
    );
  }
}
