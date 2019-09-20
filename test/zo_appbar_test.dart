import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:zo_appbar/zo_appbar.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      appBar: ZOAppBar(8.0, 'Hello', '@', 'WORLD', Colors.white, [Color(0xFF1565C0), Color(0xFF0D47A1), Color(0xFF263238), Color(0xFF212121),], Brightness.dark, []),
    ),
  );
  testWidgets('ZOAppBar Test', (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(RichText), findsOneWidget);
    expect(find.byType(Container), findsOneWidget);
    expect(find.byType(BoxDecoration), findsOneWidget);
    expect(find.byType(LinearGradient), findsOneWidget);
  });
}
