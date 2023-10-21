import 'package:flutter/material.dart';

class TextInputSample extends StatefulWidget {
  const TextInputSample({super.key});

  @override
  State<TextInputSample> createState() => _TextInputSampleState();
}

class _TextInputSampleState extends State<TextInputSample> {
bool _isObscure = true;
int _maxLineCount=1;
late TextEditingController _emailController;
late FocusNode _focusNode;

@override
  void initState() {
    super.initState();
    _emailController=TextEditingController(text: "john@doe.com");
    _focusNode=FocusNode();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          _maxLineCount = 3;
          return;
        }
        _maxLineCount = 1;
      });
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Text Input'),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            _emailController.text = "test@test.com";
          });
        },child: Icon(Icons.done),),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // TextField(
              //   autofocus: true,
              //   cursorColor: Colors.amber,
              //   keyboardType: TextInputType.phone,
              //   onChanged: (value) {
              //     debugPrint(value);
              //   },
              //   onSubmitted: (value) {
              //     debugPrint("Submitted value is :$value");
              //   },
              //   textInputAction: TextInputAction.done,
              // ),
              // const SizedBox(height: 10,),
              TextField(
                focusNode: _focusNode,
                controller: _emailController,
                cursorColor: Colors.amber,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    _emailController.value=TextEditingValue(
                      text: value,
                      selection: TextSelection.collapsed(offset: value.length)
                    );
                  });
                  
                },
                onSubmitted: (value) {
                  debugPrint("Submitted value is :$value");
                },
                textInputAction: TextInputAction.next,
                maxLines: _maxLineCount,
                decoration: InputDecoration(
                    label: const Text("Email Address"),
                    hintText: "Enter your mail address",
                    prefixIcon: const Icon(Icons.email_rounded),
                    suffixIcon: const Icon(Icons.add_box_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 10,
              ),
              // TextField(
              //   cursorColor: Colors.amber,
              //   keyboardType: TextInputType.multiline,
              //   onChanged: (value) {
              //     debugPrint(value);
              //   },
              //   onSubmitted: (value) {
              //     debugPrint("Submitted value is :$value");
              //   },
              //   textInputAction: TextInputAction.newline,
              //   maxLength: 50,
              //   maxLines: 2,
              //   decoration:
              //       const InputDecoration(
              //         icon: Icon(Icons.person), 
              //         counterText: ""
              //       ),
              // ),
              Text(_emailController.text),
              const SizedBox(
                height: 10,
              ),
              TextField(

                cursorColor: Colors.amber,
                keyboardType: TextInputType.text,

                onChanged: (value) {
                  debugPrint(value);
                },
                onSubmitted: (value) {
                  debugPrint("Submitted value is :$value");
                },
                textInputAction: TextInputAction.done,
                obscuringCharacter: "*",
                obscureText: _isObscure,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    },
                                    icon: Icon(_isObscure
                                        ? Icons.visibility_off
                                        : Icons.visibility))
        
                ),
              ),
            ],
          ),
        ));
  }
}
