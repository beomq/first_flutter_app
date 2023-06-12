import 'package:flutter/cupertino.dart';

class IosStyleScreen extends StatefulWidget {
  const IosStyleScreen({Key? key}) : super(key: key);

  @override
  State<IosStyleScreen> createState() => _IosStyleScreenState();
}

class _IosStyleScreenState extends State<IosStyleScreen> {
  int count = 10;
  String _text = '';
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('홈'),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: CupertinoColors.systemRed,
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '숫자',
                    style: TextStyle(
                      color: CupertinoColors.black,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    '$count',
                    style: TextStyle(
                      color: CupertinoColors.systemGrey,
                      fontSize: 70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 200,
                      child: CupertinoButton(
                        color: CupertinoColors.activeBlue,
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                        child: Text(
                          'Button',
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: CupertinoTextField(
                          controller: _textController,
                          placeholder: '글자',
                          onChanged: (text) {
                            _text = text;
                          },
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: CupertinoButton(
                          color: CupertinoColors.activeBlue,
                          onPressed: () {
                            print(_textController.text);
                            setState(() {});
                          },
                          child: Text('login'),
                        ),
                      ),
                    ],
                  ),
                  Text(_textController.text),
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Capivara%28Hydrochoerus_hydrochaeris%29.jpg/300px-Capivara%28Hydrochoerus_hydrochaeris%29.jpg',
                    width: 200,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: CupertinoColors.systemRed,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/pic.jpg',
                        width: 200,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
