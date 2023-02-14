import 'dart:async';

import 'package:auto_routers/card.dart';
import 'package:auto_routers/search.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class YesNoPage extends StatefulWidget {
  YesNoPage({Key? key}) : super(key: key);

  @override
  State<YesNoPage> createState() => _YesNoPageState();
}

class _YesNoPageState extends State<YesNoPage> {
  int? _curr = 2;
  final _formKey = GlobalKey<FormState>();

  void onChangeHandler() {
    if (_curr == 0) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => CardPage()),
      // );
      Navigator.pop(context);

      showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Enter Your Debit Card Details",
                        style: TextStyle(
                            color: Color(0xff132E79),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    _inputTile(
                        label: "LAST 6 DIGIT OF DEBIT CARD",
                        onChanged: (v) {
                          // TextInputChanged(
                          //     formValid:
                          //         _formKey.currentState?.validate() ?? false);
                        },
                        validator: (v) {
                          if (v != null && v.isEmpty) {
                            return "";
                          }
                        },
                        icon: Icons.credit_card),
                    _inputTile(
                        label: "EXP DATE",
                        onChanged: (v) {
                          // TextInputChanged(
                          //     formValid:
                          //         _formKey.currentState?.validate() ?? false);
                        },
                        validator: (v) {
                          if (v != null && v.isEmpty) {
                            return "";
                          }
                        }),
                  ],
                ),
              ),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: Text("Dummy")),
      body: Column(
        children: [
          ElevatedButton(
            child: Text("click"),
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15.0),
                  ),
                ),
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.of(context).viewInsets,
                    child: StatefulBuilder(
                      builder: (context, setState) => Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "Do you want to make payment also?",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 3, 72, 130),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            RadioListTile(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.0),
                                  ),
                                ),
                                selectedTileColor:
                                    Color.fromARGB(255, 3, 72, 130),
                                tileColor: Color.fromARGB(255, 237, 233, 233),
                                value: 0,
                                title: Text("Yes"),
                                groupValue: _curr,
                                onChanged: (int? val) {
                                  _curr = val;
                                  setState(() {});
                                  onChangeHandler();
                                  _curr =
                                      2; //check this out in order to revert the changes
                                }),
                            SizedBox(
                              height: 7,
                            ),
                            RadioListTile(
                              selectedTileColor:
                                  Color.fromARGB(255, 3, 72, 130),
                              tileColor: Color.fromARGB(255, 237, 233, 233),
                              value: 1,
                              title: Text("No"),
                              groupValue: _curr,
                              onChanged: (int? val) {
                                _curr = val;
                                setState(() {});

                                onChangeHandler();
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }

  ListTile _inputTile({
    required String label,
    IconData? icon,
    required Function(String?) onChanged,
    FormFieldValidator<String?>? validator,
  }) {
    return ListTile(
      subtitle: TextFormField(
        keyboardType: TextInputType.number,
        onChanged: onChanged,
        validator: validator ?? (v) {},
        style: TextStyle(
          fontSize: 18,
          color: Color(0xff132E79),
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          suffixIcon: Icon(
            icon,
            color: Color(0xff132E79),
          ),
          label: Text(
            label,
            style: TextStyle(
              color: Color(0xff132E79),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
