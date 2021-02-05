import 'instrument_fact.dart';

class Instrument {
  final int id;
  final String name;
  final String url;
  final String owner;
  final int buskings;
  final List<InstrumentFact> facts;
  Instrument({this.id, this.name, this.url, this.owner, this.buskings, this.facts});

  Instrument.blank()
    : id = 0,
      name = '',
      url = '',
      owner = '',
      buskings = 0,
      facts = [];
}
