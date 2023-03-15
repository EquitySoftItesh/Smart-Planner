import 'package:flutter/material.dart';

class ConnectionLostScreen extends StatelessWidget {
  const ConnectionLostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 104,
                height: 131,
                margin: const EdgeInsets.only(left: 30, top: 131),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/plug.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 42,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 220,
                height: 366,
                margin: const EdgeInsets.only(left: 30),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/wire.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Opps!..',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 34),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 250,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 100),
                  child: Text(
                    'Something wrong with your connection, Please try again.',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 122,
                child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 200),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Retry',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 19),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
