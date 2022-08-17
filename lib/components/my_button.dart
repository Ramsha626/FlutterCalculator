import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MyButton(
      {Key? key,
        required this.title,
      this.color = Colors.white,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onPress,
          child: Container(
              height: 75,
              //decoration: BoxDecoration(shape: BoxShape.circle, color: color),
              child: Center(
                  child: Text(
                title,
                style: TextStyle(
                  fontSize: 30,
                  color: color,
                ),
              ))),
        ),
      ),
    );
  }
}

class EqualButton extends StatelessWidget {
  final VoidCallback onPress;

  const EqualButton({Key? key, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: InkWell(
              onTap: onPress,
              child: Container(
                height: 70,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.deepOrangeAccent),
                child: const Center(
                    child: Text(
                  '=',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                  ),
                )),
              ),
          //  )
    ));
  }
}
