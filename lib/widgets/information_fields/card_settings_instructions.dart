// Copyright (c) 2018, codegrue. All rights reserved. Use of this source code
// is governed by the MIT license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

/// This is a read only section of text
class CardSettingsInstructions extends StatelessWidget {
  CardSettingsInstructions({
    this.text: 'Instructions here...',
    this.backgroundColor,
    this.textColor,
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context)
        .primaryTextTheme
        .caption
        .copyWith(color: this.textColor, fontSize: 15.0);

    return Container(
      margin: EdgeInsets.all(0.0),
      decoration:
          BoxDecoration(color: backgroundColor ?? Theme.of(context).cardColor),
      padding: EdgeInsets.only(left: 14.0, top: 8.0, right: 14.0, bottom: 8.0),
      child: Row(
        children: <Widget>[
          Text(
            text,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
