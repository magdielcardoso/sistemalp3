import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'graficos_relatorios_model.dart';
export 'graficos_relatorios_model.dart';

class GraficosRelatoriosWidget extends StatefulWidget {
  const GraficosRelatoriosWidget({super.key});

  @override
  State<GraficosRelatoriosWidget> createState() =>
      _GraficosRelatoriosWidgetState();
}

class _GraficosRelatoriosWidgetState extends State<GraficosRelatoriosWidget> {
  late GraficosRelatoriosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GraficosRelatoriosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 6.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vendas por equipes',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Satoshi',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Satoshi'),
                        ),
                  ),
                  Text(
                    'Estatística de vendas',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Satoshi',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Satoshi'),
                        ),
                  ),
                ],
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 20.0,
                buttonSize: 40.0,
                fillColor: const Color(0xFFE5E5E5),
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 20.0,
                ),
                onPressed: () async {
                  context.pushNamed(
                    'embreve',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
              ),
            ].divide(const SizedBox(width: 12.0)),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 472.0,
                    height: 195.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFFECECEC),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 24.0, 12.0, 12.0),
                      child: FutureBuilder<List<VendasEquipesRow>>(
                        future: VendasEquipesTable().queryRows(
                          queryFn: (q) => q,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: SpinKitThreeBounce(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 40.0,
                                ),
                              ),
                            );
                          }
                          List<VendasEquipesRow> chartVendasEquipesRowList =
                              snapshot.data!;
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('embreve');
                            },
                            child: SizedBox(
                              width: 370.0,
                              height: 230.0,
                              child: FlutterFlowLineChart(
                                data: [
                                  FFLineChartData(
                                    xData: chartVendasEquipesRowList
                                        .map((e) => e.vendasMes)
                                        .withoutNulls
                                        .toList(),
                                    yData: chartVendasEquipesRowList
                                        .map((e) => e.nomeEquipe)
                                        .withoutNulls
                                        .toList(),
                                    settings: LineChartBarData(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      barWidth: 2.0,
                                      isCurved: true,
                                      preventCurveOverShooting: true,
                                    ),
                                  )
                                ],
                                chartStylingInfo: const ChartStylingInfo(
                                  enableTooltip: true,
                                  backgroundColor: Colors.transparent,
                                  showGrid: true,
                                  showBorder: false,
                                ),
                                axisBounds: const AxisBounds(),
                                xAxisLabelInfo: const AxisLabelInfo(
                                  title: 'Vendas Mês',
                                  titleTextStyle: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                  showLabels: true,
                                  labelInterval: 10.0,
                                ),
                                yAxisLabelInfo: const AxisLabelInfo(
                                  title: 'Equipe',
                                  titleTextStyle: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('embreve');
                    },
                    child: CircularPercentIndicator(
                      percent: 0.7,
                      radius: 100.0,
                      lineWidth: 12.0,
                      animation: true,
                      animateFromLastPercent: true,
                      progressColor: FlutterFlowTheme.of(context).secondary,
                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                      center: Text(
                        'Meta\nBanco do Brasil',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              fontFamily: 'Satoshi',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              decoration: TextDecoration.underline,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 278.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFECECEC),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Progresso da meta',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Satoshi',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Satoshi'),
                                    ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('embreve');
                                },
                                child: Icon(
                                  Icons.keyboard_arrow_right_sharp,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                              ),
                            ],
                          ),
                          FutureBuilder<List<MetasAgentesRow>>(
                            future: MetasAgentesTable().querySingleRow(
                              queryFn: (q) => q,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 40.0,
                                    height: 40.0,
                                    child: SpinKitThreeBounce(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 40.0,
                                    ),
                                  ),
                                );
                              }
                              List<MetasAgentesRow>
                                  progressBarMetasAgentesRowList =
                                  snapshot.data!;
                              final progressBarMetasAgentesRow =
                                  progressBarMetasAgentesRowList.isNotEmpty
                                      ? progressBarMetasAgentesRowList.first
                                      : null;
                              return LinearPercentIndicator(
                                percent: valueOrDefault<double>(
                                  progressBarMetasAgentesRow?.progressoMeta,
                                  0.0,
                                ),
                                width: 230.0,
                                lineHeight: 10.0,
                                animation: true,
                                animateFromLastPercent: true,
                                progressColor:
                                    FlutterFlowTheme.of(context).secondary,
                                backgroundColor:
                                    FlutterFlowTheme.of(context).accent4,
                                barRadius: const Radius.circular(12.0),
                                padding: EdgeInsets.zero,
                              );
                            },
                          ),
                        ].divide(const SizedBox(height: 6.0)),
                      ),
                    ),
                  ),
                  Container(
                    width: 278.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondary,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '8 dias restantes',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Satoshi',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Satoshi'),
                                    ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('embreve');
                                },
                                child: Icon(
                                  Icons.keyboard_arrow_right_sharp,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                              ),
                            ],
                          ),
                          LinearPercentIndicator(
                            percent: 0.7,
                            width: 230.0,
                            lineHeight: 10.0,
                            animation: true,
                            animateFromLastPercent: true,
                            progressColor: FlutterFlowTheme.of(context).primary,
                            backgroundColor:
                                FlutterFlowTheme.of(context).accent4,
                            barRadius: const Radius.circular(12.0),
                            padding: EdgeInsets.zero,
                          ),
                        ].divide(const SizedBox(height: 6.0)),
                      ),
                    ),
                  ),
                ].divide(const SizedBox(height: 12.0)),
              ),
            ].divide(const SizedBox(width: 12.0)),
          ),
        ),
      ],
    );
  }
}
