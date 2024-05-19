import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cadastro_com_sucesso_model.dart';
export 'cadastro_com_sucesso_model.dart';

class CadastroComSucessoWidget extends StatefulWidget {
  const CadastroComSucessoWidget({super.key});

  @override
  State<CadastroComSucessoWidget> createState() =>
      _CadastroComSucessoWidgetState();
}

class _CadastroComSucessoWidgetState extends State<CadastroComSucessoWidget> {
  late CadastroComSucessoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CadastroComSucessoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 48.0),
      child: Container(
        width: 400.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondary,
          borderRadius: BorderRadius.circular(48.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cadastro realizado com sucesso!',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Switzer',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 20.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: GoogleFonts.asMap().containsKey('Switzer'),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
