import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ZeepLife extends StatelessWidget{
  final TextEditingController _controller = TextEditingController();
  @override
  void dispose(){
    _controller.dispose();
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container( 
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      child:  Column(
        children: [
          TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter yout text'
            ),
          ),
          ElevatedButton(onPressed: (){
            print('Text:${_controller.text}');
          }, child: Text('Submit'))
        ],
      ),
    );
  }
}