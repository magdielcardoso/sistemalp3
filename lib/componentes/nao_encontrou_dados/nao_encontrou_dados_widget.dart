import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'nao_encontrou_dados_model.dart';
export 'nao_encontrou_dados_model.dart';

class NaoEncontrouDadosWidget extends StatefulWidget {
  const NaoEncontrouDadosWidget({super.key});

  @override
  State<NaoEncontrouDadosWidget> createState() =>
      _NaoEncontrouDadosWidgetState();
}

class _NaoEncontrouDadosWidgetState extends State<NaoEncontrouDadosWidget> {
  late NaoEncontrouDadosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NaoEncontrouDadosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Não encontramos dados para a sua busca!',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleLargeFamily),
                ),
          ),
          Text(
            'Verifique os parâmetros e tente novamente.',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.normal,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleLargeFamily),
                ),
          ),
        ].divide(const SizedBox(height: 8.0)),
      ),
    );
  }
}
