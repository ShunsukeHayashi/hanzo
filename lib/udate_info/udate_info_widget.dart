import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'udate_info_model.dart';
export 'udate_info_model.dart';

class UdateInfoWidget extends StatefulWidget {
  /// Onbording step 2 会社独自のコンテンツおよび、ファイル情報等をアップロードしてインプットUpdateする
  const UdateInfoWidget({super.key});

  @override
  State<UdateInfoWidget> createState() => _UdateInfoWidgetState();
}

class _UdateInfoWidgetState extends State<UdateInfoWidget> {
  late UdateInfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UdateInfoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    buttonSize: 40.0,
                    fillColor: const Color(0xFF1A1A1A),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                  Text(
                    '2/3',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
              Text(
                '会社のデータを\nアップロード',
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'Inter Tight',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                'AIに会社独自の情報を学習させることで、より正確な回答が可能になります。',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: const Color(0xFF666666),
                      letterSpacing: 0.0,
                    ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1A),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '会社の基本情報',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                '社名、設立年、従業員数など',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: const Color(0xFF666666),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.check_circle,
                            color: Color(0xFF4B39EF),
                            size: 24.0,
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 1.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF333333),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '製品・サービス資料',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                'カタログ、仕様書、マニュアルなど',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: const Color(0xFF666666),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.upload_file,
                            color: Colors.white,
                            size: 24.0,
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 1.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF333333),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '社内規定・マニュアル',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                '就業規則、業務マニュアルなど',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: const Color(0xFF666666),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.upload_file,
                            color: Colors.white,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ].divide(const SizedBox(height: 16.0)),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1A),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'アップロード済みファイル',
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF333333),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Icon(
                                  Icons.description,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '会社概要.pdf',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    '2.4 MB',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Inter',
                                          color: const Color(0xFF666666),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(width: 12.0)),
                          ),
                          const Icon(
                            Icons.check_circle,
                            color: Color(0xFF4B39EF),
                            size: 24.0,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF333333),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Icon(
                                  Icons.folder,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '製品カタログ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    '12個のファイル',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Inter',
                                          color: const Color(0xFF666666),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(width: 12.0)),
                          ),
                          const Icon(
                            Icons.check_circle,
                            color: Color(0xFF4B39EF),
                            size: 24.0,
                          ),
                        ],
                      ),
                    ].divide(const SizedBox(height: 16.0)),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 80.0,
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: '次へ',
                  options: FFButtonOptions(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 56.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Inter Tight',
                              color: Colors.white,
                              letterSpacing: 0.0,
                            ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}
