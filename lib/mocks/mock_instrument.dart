import '../models/instrument.dart';
import '../models/instrument_fact.dart';

class MockInstrument extends Instrument {
  static final List<Instrument> items = [
    Instrument(
      id: 0,
      name: 'Yamaha P-115 Digital Piano',
      url: 'https://www.avgearshop.com/media/catalog/product/p/1/p115-gallery-3.jpg',
      owner: 'Doraemon',
      buskings: 5,
      facts: <InstrumentFact>[
        InstrumentFact(
          title: 'Description',
          text: 'The P-115, Yamaha\'s follow-up to the industry\'s best-selling digital piano, now has its own app for iOS. An elegant touch screen controller that makes getting to the features of the P-115 simple.'
        ),
        InstrumentFact(
          title: 'Features',
          text: 'Auto-accompaniment, Metronome, Sound Boost, Intelligent Acoustic Control (IAC)'
        ),
        InstrumentFact(
          title: 'Specifications',
          text: 'Dimensions:\n• Width: 1326mm (52-1/4”)\n• Height: 163mm (6-1/4”)\n• Depth: 295mm (11-1/2”)\nNumber of Keys: 88\nType: Graded hammer standard (GHS) keyboard, matte finish on black keys\nTouch Response: Hard/Medium/Soft/Fixed\nNumber of Pedals: 1\nPolyphony: 192\nNumber of Voices: 14\nMetronome: Yes\nTranspose: -6 to 0,0 to +6\nDual/Layers: Yes\nDuo: Yes'
        )
      ]
    ),
    Instrument(
      id: 1,
      name: 'Fender SA-150 Acoustic Guitar',
      url: 'https://guitarsolo.info/media/guitar_images/2018/06/09/f5da81aaf0004ddc9a733f3c56d590a0.jpg',
      owner: 'Nobita Nobi',
      buskings: 10,
      facts: <InstrumentFact>[
        InstrumentFact(
          title: 'Description',
          text: 'The Squier by Fender SA-150 is a full-size steel-string acoustic that offers big sound at a small price. This guitar features scalloped “bracing, mahogany neck and a durable dark-stained maple fingerboard to give you an instrument that looks as good as it sounds. With its slim, easy-to-play neck and full-bodied dreadnought tone, the SA-150 is an ideal choice for all rookie strummers.'
        ),
        InstrumentFact(
          title: 'Specifications',
          text: 'Weight: 2.52kg\nDimensions: 106.7 x 50.8 x 15.2 cm\nBody: Meterial	Basswood\nColor: Natural\nNumber of Strings:	6\nGuitar Bridge System:	Hardtail Bridge'
        )
      ]
    ),
    Instrument(
      id: 2,
      name: 'N/D367s Microphone',
      url: 'https://img.audiofanzine.com/images/u/product/normal/electro-voice-n-d367s-49783.jpg',
      owner: 'Shizuka Minamoto',
      buskings: 13,
      facts: <InstrumentFact>[
        InstrumentFact(
          title: 'Description',
          text: 'Offering classic N/DYM sound, the N/D367s has proven very popular with female vocalists across a variety of musical genres, thanks to its smooth, controlled frequency response and exceptional N/DYM sensitivity. The N/D367 also provides great sound for podium use.'
        ),
        InstrumentFact(
          title: 'Features',
          text: 'Cardioid polar pattern\nDynamic, high-sensitivity neodymium element\nClassic N/DYM sound\nTight-mesh Memraflex™ grille\nSmooth, controlled frequency response\nSuperior multistage shock mount for ultra- low handling noise\nOn/off switch'
        ),
        InstrumentFact(
          title: 'Specifications',
          text: 'Weight: 8.4oz (238g)\nHeight: 7.13" (181mm)\nAudio Frequency Response: 25 - 20,000 Hz'
        )
      ]
    )
  ];
  

  static List<Instrument> fetchAll() {
    return MockInstrument.items;
  }

  static Instrument fetchAny() {
    return MockInstrument.items[0];
  }

  static Instrument fetchById(int id) {
    return MockInstrument.items[id];
  }
  
} 