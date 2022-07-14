import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ahun_project/main.dart' as app;
import 'package:http/http.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  group('Business feature request', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets("request", (tester) async {
      app.main();
      tester.pumpAndSettle();

      final searchButton = find.byKey(Key("search"));

      await tester.tap(searchButton);
      tester.pumpAndSettle();
    });
  });
}
