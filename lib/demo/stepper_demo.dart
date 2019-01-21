import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currenStepIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StepperDemo'),
      ),
      body: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: Stepper(
                  currentStep: _currenStepIndex,
                  onStepTapped: (int currentStep) {
                    setState(() {
                      _currenStepIndex = currentStep;
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      _currenStepIndex < 2
                          ? _currenStepIndex += 1
                          : _currenStepIndex = 0;
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      _currenStepIndex > 0
                          ? _currenStepIndex -= 1
                          : _currenStepIndex = 0;
                    });
                  },
                  steps: [
                    Step(
                      title: Text('login'),
                      subtitle: Text('Login First'),
                      content: Text('Megna exception. test'),
                      isActive: _currenStepIndex == 0,
                    ),
                    Step(
                      title: Text('Choose Plan'),
                      subtitle: Text('Choose Your Plan'),
                      content: Text('Megna exception. test'),
                      isActive: _currenStepIndex == 1,
                    ),
                    Step(
                      title: Text('Confirm your plan'),
                      subtitle: Text('Confirm !!! Are you shure ?'),
                      content: Text('Megna exception. test'),
                      isActive: _currenStepIndex == 2,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
