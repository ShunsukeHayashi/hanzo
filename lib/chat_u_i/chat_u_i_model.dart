import '/flutter_flow/flutter_flow_util.dart';
import 'chat_u_i_widget.dart' show ChatUIWidget;
import 'package:flutter/material.dart';

class ChatUIModel extends FlutterFlowModel<ChatUIWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
