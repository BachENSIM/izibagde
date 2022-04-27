import 'package:flutter/material.dart';
import 'package:izibagde/components/add_item_form_v2.dart';
import 'package:izibagde/components/custom_colors.dart';
import 'package:izibagde/screens/add_group_screen.dart';

class AddScreen extends StatelessWidget {
  //const AddScreen({Key? key}) : super(key: key);
  final FocusNode _titleFocusNode = FocusNode();
  final FocusNode _descFocusNode = FocusNode();
  final FocusNode _addrFocusNode = FocusNode();
  //final FocusNode _startFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _titleFocusNode.unfocus();
        _descFocusNode.unfocus();
        _addrFocusNode.unfocus();
        //_startFocusNode.unfocus();
      },
      child: Scaffold(
        //backgroundColor: CustomColors.backgroundLight,
        appBar: AppBar(
          //elevation: 0,
          //backgroundColor: CustomColors.backgroundColorDark,
          title: Text("Add an event"),
          //AppBarTitle()
          centerTitle: true,
          leadingWidth: 100,
          leading: ElevatedButton.icon(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_left_sharp),
              label: const Text("Back",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    //color: CustomColors.textSecondary,
                  )),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                // primary: Colors.transparent
              )),
          actions: [
            ElevatedButton(
              // style: ButtonStyle(
              //     backgroundColor: MaterialStateProperty.all(
              //   CustomColors.backgroundColorDark,
              // )),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => GroupScreen(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Text("Next",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        //color: CustomColors.textSecondary,
                      )),
                  Icon(Icons.arrow_right_sharp)
                ],
              ),
            )
          ],
        ),
        //scrollView
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
              ),
              child: AddItemForm(
                titleFocusNode: _titleFocusNode,
                descFocusNode: _descFocusNode,
                addrFocusNode: _addrFocusNode,
                //startFocusNode: _startFocusNode,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
