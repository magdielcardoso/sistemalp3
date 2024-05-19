import '/componentes/dpd_minha_conta/dpd_minha_conta_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mn_superior_model.dart';
export 'mn_superior_model.dart';

class MnSuperiorWidget extends StatefulWidget {
  const MnSuperiorWidget({super.key});

  @override
  State<MnSuperiorWidget> createState() => _MnSuperiorWidgetState();
}

class _MnSuperiorWidgetState extends State<MnSuperiorWidget> {
  late MnSuperiorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MnSuperiorModel());

    _model.cxBuscaTextController ??= TextEditingController();
    _model.cxBuscaFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 72.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF05120C),
            FlutterFlowTheme.of(context).primaryBackground
          ],
          stops: const [0.0, 0.5],
          begin: const AlignmentDirectional(0.5, -1.0),
          end: const AlignmentDirectional(-0.5, 1.0),
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(48.0, 12.0, 48.0, 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 6.0),
                child: TextFormField(
                  controller: _model.cxBuscaTextController,
                  focusNode: _model.cxBuscaFocusNode,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Roboto',
                              color: const Color(0xFFCBCBCB),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Roboto'),
                            ),
                    hintText: 'O que você está procurando?',
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Satoshi',
                              color: const Color(0xFF6D6D6D),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF2C2C2C),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    prefixIcon: Icon(
                      Icons.search_sharp,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 15.0,
                    ),
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 10.0,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Roboto'),
                      ),
                  validator: _model.cxBuscaTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  barrierColor: const Color(0x7F171717),
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: const SizedBox(
                        height: 300.0,
                        child: DpdMinhaContaWidget(),
                      ),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              },
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
                child: Image.network(
                  FFAppState().fotoPath,
                  width: 48.0,
                  height: 48.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'minhasNotificacoes',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );
              },
              child: Icon(
                FFIcons.kbell,
                color: FlutterFlowTheme.of(context).secondary,
                size: 24.0,
              ),
            ),
          ].divide(const SizedBox(width: 12.0)),
        ),
      ),
    );
  }
}
