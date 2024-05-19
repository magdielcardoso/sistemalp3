import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cards_relatorio_model.dart';
export 'cards_relatorio_model.dart';

class CardsRelatorioWidget extends StatefulWidget {
  const CardsRelatorioWidget({super.key});

  @override
  State<CardsRelatorioWidget> createState() => _CardsRelatorioWidgetState();
}

class _CardsRelatorioWidgetState extends State<CardsRelatorioWidget> {
  late CardsRelatorioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardsRelatorioModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            width: 230.0,
            height: 87.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('embreve');
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'R\$3.333.451,40',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                      Text(
                        'Produção líquida',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              color: const Color(0xFFC5C5C5),
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                    ]
                        .divide(const SizedBox(height: 0.0))
                        .addToStart(const SizedBox(height: 12.0))
                        .addToEnd(const SizedBox(height: 12.0)),
                  ),
                  Icon(
                    FFIcons.kdollarSign,
                    color: FlutterFlowTheme.of(context).secondary,
                    size: 50.0,
                  ),
                ]
                    .addToStart(const SizedBox(width: 12.0))
                    .addToEnd(const SizedBox(width: 12.0)),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 230.0,
            height: 87.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('embreve');
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Consignado',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                      Text(
                        'Produto mais vendido',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              color: const Color(0xFFC5C5C5),
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                    ]
                        .divide(const SizedBox(height: 0.0))
                        .addToStart(const SizedBox(height: 12.0))
                        .addToEnd(const SizedBox(height: 12.0)),
                  ),
                  Icon(
                    FFIcons.kaward,
                    color: FlutterFlowTheme.of(context).secondary,
                    size: 40.0,
                  ),
                ]
                    .addToStart(const SizedBox(width: 12.0))
                    .addToEnd(const SizedBox(width: 12.0)),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 230.0,
            height: 87.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('embreve');
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'R\$5.790.000,00',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                      Text(
                        'Resultado mensal',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              color: const Color(0xFFC5C5C5),
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                    ]
                        .divide(const SizedBox(height: 0.0))
                        .addToStart(const SizedBox(height: 12.0))
                        .addToEnd(const SizedBox(height: 12.0)),
                  ),
                  Icon(
                    FFIcons.kpercent,
                    color: FlutterFlowTheme.of(context).secondary,
                    size: 45.0,
                  ),
                ]
                    .addToStart(const SizedBox(width: 12.0))
                    .addToEnd(const SizedBox(width: 12.0)),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 230.0,
            height: 87.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('embreve');
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'R\$166.672,94',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                      Text(
                        'Média diária',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              color: const Color(0xFFC5C5C5),
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                    ]
                        .divide(const SizedBox(height: 0.0))
                        .addToStart(const SizedBox(height: 12.0))
                        .addToEnd(const SizedBox(height: 12.0)),
                  ),
                  Icon(
                    FFIcons.kbarChart2,
                    color: FlutterFlowTheme.of(context).secondary,
                    size: 50.0,
                  ),
                ]
                    .addToStart(const SizedBox(width: 12.0))
                    .addToEnd(const SizedBox(width: 12.0)),
              ),
            ),
          ),
        ),
      ].divide(const SizedBox(width: 6.0)),
    );
  }
}
