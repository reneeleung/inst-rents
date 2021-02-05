import 'package:flutter_test/flutter_test.dart';
import '../lib/mocks/mock_instrument.dart';

void main() {
  test('test fetchAny', () {
    final mockInstrument = MockInstrument.fetchAny();
    expect(mockInstrument, isNotNull);
    expect(mockInstrument.name, isNotEmpty);
    expect(mockInstrument.owner, isNotEmpty);
    expect(mockInstrument.buskings, greaterThanOrEqualTo(0));
    expect(mockInstrument.facts, isNotEmpty);
  });

  test('test fetchAll', () {
    final mockInstruments = MockInstrument.fetchAll();
    expect(mockInstruments.length, greaterThan(0));
    expect(mockInstruments[0].name, isNotEmpty);
    expect(mockInstruments[0].owner, isNotEmpty);
    expect(mockInstruments[0].buskings, greaterThanOrEqualTo(0));
    expect(mockInstruments[0].facts, isNotEmpty);
  });

  test('test fetchById', () {
    final mockInstrument = MockInstrument.fetchById(0);
    expect(mockInstrument, isNotNull);
    expect(mockInstrument.name, isNotEmpty);
    expect(mockInstrument.owner, isNotEmpty);
    expect(mockInstrument.buskings, greaterThanOrEqualTo(0));
    expect(mockInstrument.facts, isNotEmpty);
  });
}