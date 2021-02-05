import 'package:flutter/material.dart';
import 'components/default_app_bar.dart';
import 'models/instrument_fact.dart';
import 'models/instrument.dart';
import 'styles.dart';

const BannerImageHeight = 250.0;
const BodyVerticalPadding = 20.0;
const FooterHeight = 100.0;

class InstrumentDetail extends StatelessWidget {
  final Instrument instrument; // (todo) fetchById instead
  InstrumentDetail(this.instrument);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(instrument.name),
      body: Stack(
        children: [
          _renderBody(instrument),
          _renderFooter(),
        ],
      ),
    );
  }

  Widget _renderBody(Instrument instrument) {
    var result = List<Widget>();
    result.add(_bannerImage(instrument.url, BannerImageHeight));
    result.add(_renderHeader());
    result.addAll(_renderFacts(instrument));
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: result
      ),
      padding: EdgeInsets.only(bottom: 85.0),
    );
  }

  Widget _renderHeader() {
    return Container(
        padding: EdgeInsets.symmetric(
            vertical: BodyVerticalPadding,
            horizontal: Styles.horizontalPaddingDefault
        ),
        child: Column(
          children: [
            Text('${this.instrument.owner}\'s',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Styles.instrumentHeaderOwner,
            ),
            Text('${this.instrument.name}', style: Styles.instrumentHeaderName),
            Text('${this.instrument.buskings} Buskings', style: Styles.instrumentHeaderBuskings),
          ],
        ),
    );
  }

  Widget _renderFooter() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
          height: FooterHeight,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: _renderBookButton(),
          ),
        )
      ],
    );
  }

  Widget _renderBookButton() {
    return FlatButton(
      color: Styles.accentColor,
      textColor: Styles.textColorBright,
      onPressed: _handleReservePress,
      child: Text('Reserve'.toUpperCase(), style: Styles.textCTAButton),
    );
  }

  void _handleReservePress() {
    // (todo) Link to form
  }

  List<Widget> _renderFacts(Instrument instrument) {
    var result = List<Widget>();
      for (InstrumentFact fact in instrument.facts) {
        result.add(_sectionTitle(fact.title));
        result.add(_sectionText(fact.text));
      }
    return result;
  }

  Widget _sectionTitle(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        Styles.horizontalPaddingDefault,
        25.0,
        Styles.horizontalPaddingDefault,
        10.0
      ),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: Styles.headerLarge,
      )
    );
  }

  Widget _sectionText(String text) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: Styles.horizontalPaddingDefault,
      ),
      child: Text(text, style: Styles.textDefault)
    );
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }
}