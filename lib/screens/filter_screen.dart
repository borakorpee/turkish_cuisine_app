// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FilterScreen(this.currentFilters, this.saveFilters);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _Simple = false;
  bool _Challenging = false;
  bool _Hard = false;
  bool _Affordable = false;
  bool _Pricey = false;
  bool _Expensive = false;

  @override
  void initState() {
    _Simple = widget.currentFilters['simple'];
    _Challenging = widget.currentFilters['challenging'];
    _Hard = widget.currentFilters['hard'];

    super.initState();
  }

  Widget _buildSwitchListTile(
    String titletxt,
    String description,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
        title: Text(titletxt),
        value: currentValue,
        subtitle: Text(description),
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                final selectedFilters = {
                  'simple': _Simple,
                  'challenging': _Challenging,
                  'hard': _Hard,
                };
                widget.saveFilters(selectedFilters);
              },
              icon: Icon(Icons.save))
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust Your Meal Selection',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              _buildSwitchListTile('Simple', 'Simple to make', _Simple,
                  (newValue) {
                setState(() {
                  _Simple = newValue;
                });
              }),
              _buildSwitchListTile(
                  'Challenging', 'Challenging to make', _Challenging,
                  (newValue) {
                setState(() {
                  _Challenging = newValue;
                });
              }),
              _buildSwitchListTile('Hard', 'Hard to make', _Hard, (newValue) {
                setState(() {
                  _Hard = newValue;
                });
              }),
            ],
          ))
        ],
      ),
    );
  }
}
