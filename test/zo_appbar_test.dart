import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:zo_appbar/zo_appbar.dart';

void main() {
  test('Test for ZOAppBar UI', () {
    final zoappbar = ZOAppBar(8.0, 'zo_appbar', '.', 'EXAMPLE', Colors.white, [Color(0xFF1565C0), Color(0xFF0D47A1), Color(0xFF263238), Color(0xFF212121),], Brightness.dark, []);
    expect(zoappbar.elevation, 8.0);
    expect(zoappbar.primaryText, 'zo_appbar');
    expect(zoappbar.textSymbol, '.');
    expect(zoappbar.secondaryText, 'EXAMPLE');
    expect(zoappbar.textColor, Colors.white);
    expect(zoappbar.appBarGradientColors, [Color(0xFF1565C0), Color(0xFF0D47A1), Color(0xFF263238), Color(0xFF212121),]);
    expect(zoappbar.brightness, Brightness.dark);
    expect(zoappbar.actionIconButtons, []);
  });
}