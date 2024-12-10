import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'singup_model.dart';
export 'singup_model.dart';

class SingupWidget extends StatefulWidget {
  /// singup
  const SingupWidget({super.key});

  @override
  State<SingupWidget> createState() => _SingupWidgetState();
}

class _SingupWidgetState extends State<SingupWidget> {
  late SingupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SingupModel());

    _model.emailTextController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.userNameTextController ??= TextEditingController();
    _model.userNameFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    _model.varidatePasswordTextController ??= TextEditingController();
    _model.varidatePasswordFocusNode ??= FocusNode();

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
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Image.network(
                'https://i.gyazo.com/bff2260324351fb115dd90db0f07f2ae.png',
                width: 150.0,
                height: 150.0,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              'ShinobiAI',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily: 'Inter Tight',
                    color: Colors.white,
                    letterSpacing: 0.0,
                  ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A1A1A),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    controller: _model.emailTextController,
                    focusNode: _model.emailFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Email転送',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      filled: true,
                      fillColor: const Color(0xFF1A1A1A),
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                    minLines: 1,
                    validator: _model.emailTextControllerValidator
                        .asValidator(context),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A1A1A),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    controller: _model.userNameTextController,
                    focusNode: _model.userNameFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      filled: true,
                      fillColor: const Color(0xFF1A1A1A),
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                    minLines: 1,
                    keyboardType: TextInputType.emailAddress,
                    validator: _model.userNameTextControllerValidator
                        .asValidator(context),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A1A1A),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    controller: _model.passwordTextController,
                    focusNode: _model.passwordFocusNode,
                    autofocus: false,
                    obscureText: !_model.passwordVisibility,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      filled: true,
                      fillColor: const Color(0xFF1A1A1A),
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      suffixIcon: InkWell(
                        onTap: () => safeSetState(
                          () => _model.passwordVisibility =
                              !_model.passwordVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          _model.passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                    minLines: 1,
                    validator: _model.passwordTextControllerValidator
                        .asValidator(context),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A1A1A),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    controller: _model.varidatePasswordTextController,
                    focusNode: _model.varidatePasswordFocusNode,
                    autofocus: false,
                    obscureText: !_model.varidatePasswordVisibility,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      filled: true,
                      fillColor: const Color(0xFF1A1A1A),
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      suffixIcon: InkWell(
                        onTap: () => safeSetState(
                          () => _model.varidatePasswordVisibility =
                              !_model.varidatePasswordVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          _model.varidatePasswordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                    minLines: 1,
                    validator: _model.varidatePasswordTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ].divide(const SizedBox(height: 16.0)),
            ),
            FFButtonWidget(
              onPressed: () async {
                GoRouter.of(context).prepareAuthEvent();
                if (_model.passwordTextController.text !=
                    _model.varidatePasswordTextController.text) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Passwords don\'t match!',
                      ),
                    ),
                  );
                  return;
                }

                final user = await authManager.createAccountWithEmail(
                  context,
                  _model.emailTextController.text,
                  _model.passwordTextController.text,
                );
                if (user == null) {
                  return;
                }

                context.goNamedAuth('ChatUI', context.mounted);
              },
              text: 'Sign Up',
              options: FFButtonOptions(
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: 50.0,
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: const Color(0xFF4B39EF),
                textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Inter Tight',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
                elevation: 0.0,
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('login');
                  },
                  child: Text(
                    'Login',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF4B39EF),
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ].divide(const SizedBox(width: 4.0)),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: Text(
                'By signing up, you agree to our Terms of Service and Privacy Policy',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: Text(
                'Or sign up with',
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1A1A1A),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Icon(
                      Icons.toggle_on,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1A1A1A),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Icon(
                      Icons.facebook,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1A1A1A),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Icon(
                      Icons.apple,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                ].divide(const SizedBox(width: 16.0)),
              ),
            ),
          ].divide(const SizedBox(height: 32.0)),
        ),
      ),
    );
  }
}
