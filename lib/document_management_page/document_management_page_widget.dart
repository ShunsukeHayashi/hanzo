import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'document_management_page_model.dart';
export 'document_management_page_model.dart';

class DocumentManagementPageWidget extends StatefulWidget {
  const DocumentManagementPageWidget({super.key});

  @override
  State<DocumentManagementPageWidget> createState() =>
      _DocumentManagementPageWidgetState();
}

class _DocumentManagementPageWidgetState
    extends State<DocumentManagementPageWidget> {
  late DocumentManagementPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DocumentManagementPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
