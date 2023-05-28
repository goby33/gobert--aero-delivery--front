import 'package:aero_delivery/presentation/ui/auth/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AuthPage widget test', (WidgetTester tester) async {
    // Build AuthPage
    await tester.pumpWidget(
      const MaterialApp(
        home: AuthPage(),
      ),
    );

    // Verify background image
    expect(find.byType(DecoratedBox), findsOneWidget);
    final decoratedBoxFinder = find.byType(DecoratedBox).first;
    final decoratedBoxWidget = tester.widget<DecoratedBox>(decoratedBoxFinder);
    expect(decoratedBoxWidget.decoration is BoxDecoration, true);
    final boxDecoration = decoratedBoxWidget.decoration as BoxDecoration;
    expect(
      boxDecoration.image,
      const DecorationImage(
        image: AssetImage('assets/images/background-original.jpg'),
        fit: BoxFit.cover,
      ),
    );// Wait for modal bottom sheet to appear



    // TODO: Add verification for the modal bottom sheet and its content
  });
}
