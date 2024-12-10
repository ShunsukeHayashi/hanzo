import '/flutter_flow/flutter_flow_util.dart';
import 'singup_widget.dart' show SingupWidget;
import 'package:flutter/material.dart';

class SingupModel extends FlutterFlowModel<SingupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for UserName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for VaridatePassword widget.
  FocusNode? varidatePasswordFocusNode;
  TextEditingController? varidatePasswordTextController;
  late bool varidatePasswordVisibility;
  String? Function(BuildContext, String?)?
      varidatePasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    varidatePasswordVisibility = false;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    userNameFocusNode?.dispose();
    userNameTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    varidatePasswordFocusNode?.dispose();
    varidatePasswordTextController?.dispose();
  }
}
