import 'dart:async';
import 'package:flutter/material.dart';
import 'instrument_detail.dart';
import 'components/default_app_bar.dart';
import 'mocks/mock_instrument.dart';
import 'models/instrument.dart';
import 'styles.dart';

class InstrumentList extends StatefulWidget {
  @override
  createState() => _InstrumentListState();
}

class _InstrumentListState extends State<InstrumentList> {
  List<Instrument> instruments = [];
  bool loading = false;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar("Instruments"),
      body: RefreshIndicator(
        onRefresh: loadData,
        child: Column(children: [
          _renderProgressBar(context),
          Expanded(child: _renderListView(context),)
        ])
      ),
    );
  }
  
  Future<void> loadData() async {
    if (this.mounted) {
      setState(() => this.loading = true);
        Timer(Duration(milliseconds: 2000), () {
        final instruments = MockInstrument.fetchAll(); // (todo) fetch from database
        setState(() {
          this.instruments = instruments;
          this.loading = false;
        });
      });
    }
  }

  Widget _renderProgressBar(BuildContext context) {
    return (this.loading
      ? LinearProgressIndicator(
          value: null,
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
        )
      : Container()
    );
  }

  Widget _renderListView(BuildContext context) {
    return ListView.builder(
      itemCount: this.instruments.length,
      itemBuilder: _listItemViewBuilder,
    );
  }

  Widget _listItemViewBuilder(BuildContext context, int index) {
    var instrument = this.instruments[index];
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: _itemThumbnail(instrument),
      title: _itemTitle(instrument),
      onTap: () => _navigationToInstrumentDetail(context, instrument),
    );
  }

  void _navigationToInstrumentDetail(BuildContext context, Instrument instrument) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => InstrumentDetail(instrument)
    ));
  }

  Widget _itemThumbnail(Instrument instrument) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(instrument.url, fit: BoxFit.fitWidth,),
    );
  }

  Widget _itemTitle(Instrument instrument) {
    return Text(instrument.name, style: Styles.textDefault,);
  }
} 