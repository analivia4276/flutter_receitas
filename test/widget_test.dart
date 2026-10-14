import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_receitas/main.dart';

void main() {
  testWidgets('Aplicativo inicia', (WidgetTester tester) async {
    await tester.runAsync(() async {
      await tester.pumpWidget(const LivroReceitasApp());
      await Future<void>.delayed(const Duration(seconds: 4));
    });

    await tester.pump();
    expect(find.byType(LivroReceitasApp), findsOneWidget);
  });
}