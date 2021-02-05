import 'package:flutter_test/flutter_test.dart';
import 'package:image_test_utils/image_test_utils.dart';
import '../../lib/mocks/mock_instrument.dart';
import '../../lib/app.dart';

void main() {
  testWidgets('test app startup', (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(App());
      await tester.pumpAndSettle(const Duration(seconds: 5));

      final mockInstrument = MockInstrument.fetchAny();

      expect(find.text(mockInstrument.name), findsOneWidget);
      expect(find.text('${mockInstrument.name}blah'), findsNothing);
    });
  });
} 