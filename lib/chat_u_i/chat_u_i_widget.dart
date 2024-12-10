import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'chat_u_i_model.dart';
export 'chat_u_i_model.dart';

class ChatUIWidget extends StatefulWidget {
  /// import 'package:flutter/material.dart';
  ///
  /// void main() {
  ///   runApp(const HanzoChatApp());
  /// }
  ///
  /// class HanzoChatApp extends StatelessWidget {
  ///   const HanzoChatApp({Key? key}) : super(key: key);
  ///
  ///   @override
  ///   Widget build(BuildContext context) {
  ///     return MaterialApp(
  ///       debugShowCheckedModeBanner: false,
  ///       theme: ThemeData(
  ///         primarySwatch: Colors.grey,
  ///         visualDensity: VisualDensity.adaptivePlatformDensity,
  ///       ),
  ///       home: const ChatInterface(),
  ///     );
  ///   }
  /// }
  ///
  /// class ChatInterface extends StatefulWidget {
  ///   const ChatInterface({Key? key}) : super(key: key);
  ///
  ///   @override
  ///   _ChatInterfaceState createState() => _ChatInterfaceState();
  /// }
  ///
  /// class _ChatInterfaceState extends State<ChatInterface> {
  ///   final List<Map<String, dynamic>> _messages = [
  ///     {'id': 1, 'content': 'Welcome to Hanzo System. How may I assist you?',
  /// 'sender': 'system'},
  ///     {'id': 2, 'content': 'Tell me about the available options', 'sender':
  /// 'user'},
  ///     {'id': 3, 'content': 'I can help you with the following tasks:',
  /// 'sender': 'system'},
  ///   ];
  ///   final TextEditingController _controller = TextEditingController();
  ///   bool _isListening = false;
  ///   bool _isSending = false;
  ///
  ///   void _sendMessage() async {
  ///     if (_controller.text.trim().isEmpty) return;
  ///
  ///     setState(() {
  ///       _isSending = true;
  ///       _messages.add({
  ///         'id': _messages.length + 1,
  ///         'content': _controller.text,
  ///         'sender': 'user',
  ///       });
  ///     });
  ///     _controller.clear();
  ///
  ///     await Future.delayed(const Duration(seconds: 1)); // Simulate API call
  ///
  ///     setState(() {
  ///       _messages.add({
  ///         'id': _messages.length + 2,
  ///         'content': 'Thank you for your message. How else can I assist
  /// you?',
  ///         'sender': 'system',
  ///       });
  ///       _isSending = false;
  ///     });
  ///   }
  ///
  ///   void _toggleListening() {
  ///     setState(() {
  ///       _isListening = !_isListening;
  ///     });
  ///     // Add voice recognition logic here
  ///     if (_isListening) {
  ///       // Simulate voice input for demonstration
  ///       Future.delayed(const Duration(seconds: 2), () {
  ///         setState(() {
  ///           _controller.text = "Simulated voice input";
  ///           _isListening = false;
  ///         });
  ///       });
  ///     }
  ///   }
  ///
  ///   @override
  ///   Widget build(BuildContext context) {
  ///     return Scaffold(
  ///       backgroundColor: const Color(0xFFF7F7F7),
  ///       appBar: AppBar(
  ///         title: const Text("HANZO"),
  ///         centerTitle: true,
  ///         backgroundColor: Colors.grey[900],
  ///         actions: [
  ///           IconButton(
  ///             onPressed: () {},
  ///             icon: const Icon(Icons.menu),
  ///           ),
  ///           IconButton(
  ///             onPressed: () {},
  ///             icon: const Icon(Icons.settings),
  ///           ),
  ///         ],
  ///       ),
  ///       body: Column(
  ///         children: [
  ///           // Chat Area
  ///           Expanded(
  ///             child: ListView.builder(
  ///               itemCount: _messages.length,
  ///               padding: const EdgeInsets.all(8.0),
  ///               itemBuilder: (context, index) {
  ///                 final message = _messages[index];
  ///                 final isUser = message['sender'] == 'user';
  ///                 return Align(
  ///                   alignment: isUser ? Alignment.centerRight :
  /// Alignment.centerLeft,
  ///                   child: Container(
  ///                     margin: const EdgeInsets.symmetric(vertical: 4.0),
  ///                     padding: const EdgeInsets.all(12.0),
  ///                     constraints: const BoxConstraints(maxWidth: 300),
  ///                     decoration: BoxDecoration(
  ///                       color: isUser ? Colors.grey[800] : Colors.white,
  ///                       borderRadius: BorderRadius.circular(20.0),
  ///                       boxShadow: [
  ///                         BoxShadow(
  ///                           color: Colors.black.withOpacity(0.1),
  ///                           blurRadius: 4.0,
  ///                           offset: const Offset(2, 2),
  ///                         )
  ///                       ],
  ///                     ),
  ///                     child: Text(
  ///                       message['content'],
  ///                       style: TextStyle(
  ///                         color: isUser ? Colors.white : Colors.black87,
  ///                       ),
  ///                     ),
  ///                   ),
  ///                 );
  ///               },
  ///             ),
  ///           ),
  ///           // Input Area
  ///           Container(
  ///             padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical:
  /// 8.0),
  ///             color: Colors.white,
  ///             child: Row(
  ///               children: [
  ///                 Expanded(
  ///                   child: TextField(
  ///                     controller: _controller,
  ///                     decoration: const InputDecoration(
  ///                       hintText: "Type your message...",
  ///                       border: OutlineInputBorder(
  ///                         borderRadius:
  /// BorderRadius.all(Radius.circular(20)),
  ///                       ),
  ///                     ),
  ///                     onSubmitted: (value) => _sendMessage(),
  ///                   ),
  ///                 ),
  ///                 IconButton(
  ///                   onPressed: _toggleListening,
  ///                   icon: Icon(
  ///                     _isListening ? Icons.mic_off : Icons.mic,
  ///                     color: _isListening ? Colors.red : Colors.green,
  ///                   ),
  ///                 ),
  ///                 IconButton(
  ///                   onPressed: _isSending ? null : _sendMessage,
  ///                   icon: const Icon(Icons.send),
  ///                   color: _isSending ? Colors.grey : Colors.blue,
  ///                 ),
  ///               ],
  ///             ),
  ///           ),
  ///         ],
  ///       ),
  ///     );
  ///   }
  /// }
  ///
  const ChatUIWidget({super.key});

  @override
  State<ChatUIWidget> createState() => _ChatUIWidgetState();
}

class _ChatUIWidgetState extends State<ChatUIWidget> {
  late ChatUIModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatUIModel());

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
          title: Text(
            'HANZO',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowIconButton(
                  buttonSize: 48.0,
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
                FlutterFlowIconButton(
                  buttonSize: 48.0,
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ],
            ),
          ],
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
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            width: 300.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1A1A1A),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Text(
                                'Welcome to Hanzo System. How may I assist you?',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            width: 300.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Text(
                                'Tell me about the available options',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            width: 300.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1A1A1A),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Text(
                                'I can help you with the following tasks:',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
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
              decoration: const BoxDecoration(
                color: Color(0xFF1A1A1A),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF333333),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Type your message...',
                            hintStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          minLines: 1,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderRadius: 24.0,
                      buttonSize: 48.0,
                      fillColor: const Color(0xFF333333),
                      icon: const Icon(
                        Icons.mic,
                        color: Colors.green,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderRadius: 24.0,
                      buttonSize: 48.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ].divide(const SizedBox(width: 8.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
