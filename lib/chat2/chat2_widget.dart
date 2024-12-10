import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'chat2_model.dart';
export 'chat2_model.dart';

class Chat2Widget extends StatefulWidget {
  /// curl https://api.openai.com/v1/chat/completions \
  ///   -H "Content-Type: application/json" \
  ///   -H "Authorization: Bearer $OPENAI_API_KEY" \
  ///   -d '{
  ///     "model": "gpt-4o-mini",
  ///     "messages": [
  ///       {
  ///         "role": "system",
  ///         "content": "You are a helpful assistant."
  ///       },
  ///       {
  ///         "role": "user",
  ///         "content": "Who won the world series in 2020?"
  ///       },
  ///       {
  ///         "role": "assistant",
  ///         "content": "The Los Angeles Dodgers won the World Series in 2020."
  ///       },
  ///       {
  ///         "role": "user",
  ///         "content": "Where was it played?"
  ///       }
  ///     ]
  ///   }'
  const Chat2Widget({super.key});

  @override
  State<Chat2Widget> createState() => _Chat2WidgetState();
}

class _Chat2WidgetState extends State<Chat2Widget> {
  late Chat2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Chat2Model());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        appBar: AppBar(
          backgroundColor: const Color(0xFF1A1A1A),
          automaticallyImplyLeading: false,
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    reverse: true,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1A1A1A),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AI Assistant',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: const Color(0xFF4B39EF),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                'こんにちは！どのようなお手伝いができますか？',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'You',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: const Color(0xFF39D2C0),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                'AIについて教えてください。',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1A1A1A),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AI Assistant',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: const Color(0xFF4B39EF),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                'AIは「人工知能」の略で、人間の知能を模倣し、学習、問題解決、パターン認識などのタスクを実行するコンピューターシステムです。機械学習、深層学習、自然言語処理などの技術を使用し、データから学習して進化します。AIは様々な分野で活用されており、音声認識、画像認識、自動運転、医療診断支援など、私たちの日常生活にも大きな影響を与えています。',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1A1A1A),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AI Assistant',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: const Color(0xFF4B39EF),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                'AIの具体的な応用例はたくさんありますが、いくつか代表的なものを挙げてみましょう：\n\n1. 音声アシスタント：Siri、Alexa、Google Assistantなど\n2. 画像認識：顔認証システム、自動タグ付け\n3. 自然言語処理：機械翻訳、チャットボット\n4. 推薦システム：Netflixの映画推薦、Amazonの商品推薦\n5. 自動運転車：Tesla、Waymoなどの自動運転技術\n6. 医療診断支援：X線画像の分析、疾病予測\n7. 金融：詐欺検出、株価予測、リスク評価\n8. ロボティクス：産業用ロボット、家庭用ロボット掃除機\n9. ゲーム：AlphaGoのような高度なゲームAI\n10. スマートホーム：エネルギー管理、セキュリティシステム\n\nこれらは一部の例に過ぎず、AIの応用範囲は日々拡大しています。',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 16.0)),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 80.0,
              decoration: const BoxDecoration(
                color: Color(0xFF1A1A1A),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'You',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Inter',
                            color: const Color(0xFF39D2C0),
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'AIの具体的な応用例を教えてください。',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.white,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 80.0,
              decoration: const BoxDecoration(
                color: Color(0xFF1A1A1A),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'メッセージを入力...',
                            hintStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: const Color(0xFF999999),
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 16.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          minLines: 1,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderRadius: 25.0,
                      buttonSize: 50.0,
                      fillColor: const Color(0xFF4B39EF),
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
