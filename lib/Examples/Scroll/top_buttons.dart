import 'package:flutter/material.dart';

class TopButtons extends StatelessWidget {
  final Function up,down;
  final String _currentOffset;

  const TopButtons(this.up, this.down, this._currentOffset, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          alignment: Alignment.centerLeft,
          child: TextButton(
            child: const Text('DOWN'),
            onPressed: () => down(),
          ),
        ),
        Text(_currentOffset, textAlign: TextAlign.center,),
        Container(
          alignment: Alignment.centerRight,
          child: TextButton(
            child: const Text('UP'),
            onPressed: () => up(),
          ),
        ),
      ],
    );
  }
}
