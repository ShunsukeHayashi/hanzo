import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'createagents_model.dart';
export 'createagents_model.dart';

class CreateagentsWidget extends StatefulWidget {
  /// Onbording Step 3 , create Agents
  const CreateagentsWidget({super.key});

  @override
  State<CreateagentsWidget> createState() => _CreateagentsWidgetState();
}

class _CreateagentsWidgetState extends State<CreateagentsWidget> {
  late CreateagentsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateagentsModel());

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
                    '3/3',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
              Text(
                'AIエージェントを\n  text 6 - content \"業務に合わせたAIエージェントを作成することで、より効率的な業務支援が可能になります。',
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
                                'カスタマーサポート',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                '問い合わせ対応、FAQ作成',
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
                            Icons.add_circle_outline,
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
                                '営業アシスタント',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                '提案資料作成、商談準備',
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
                            Icons.add_circle_outline,
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
                                '人事アシスタント',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                '採用業務、労務管理',
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
                            Icons.add_circle_outline,
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
                        '作成済みエージェント',
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
                                  Icons.support_agent,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '製品サポートボット',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    '製品の使い方案内',
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
                                  Icons.business,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '営業提案作成',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    '提案書・見積書作成',
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
                  text: '始める',
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
