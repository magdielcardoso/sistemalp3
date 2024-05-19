import '/backend/supabase/supabase.dart';
import '/componentes/mn_lateral/mn_lateral_widget.dart';
import '/componentes/mn_superior/mn_superior_widget.dart';
import '/componentes/nao_encontrou_dados/nao_encontrou_dados_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'producoes_model.dart';
export 'producoes_model.dart';

class ProducoesWidget extends StatefulWidget {
  const ProducoesWidget({
    super.key,
    required this.producoesHistoricoID,
  });

  final int? producoesHistoricoID;

  @override
  State<ProducoesWidget> createState() => _ProducoesWidgetState();
}

class _ProducoesWidgetState extends State<ProducoesWidget>
    with TickerProviderStateMixin {
  late ProducoesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProducoesModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'Produções',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.mnLateralModel,
                          updateCallback: () => setState(() {}),
                          child: const MnLateralWidget(),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  wrapWithModel(
                                    model: _model.mnSuperiorModel,
                                    updateCallback: () => setState(() {}),
                                    child: const MnSuperiorWidget(),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: const BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Produções',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Satoshi',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    fontSize: 24.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w900,
                                                    useGoogleFonts:
                                                        GoogleFonts.asMap()
                                                            .containsKey(
                                                                'Satoshi'),
                                                  ),
                                            ),
                                            Text(
                                              'Veja e gerencie todas as produções',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Satoshi',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Satoshi'),
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 6.0, 0.0, 6.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    '${FFAppState().varDataInicial} até ${FFAppState().varDataFinal}',
                                                    'Data inicial e Data Final',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            const Color(0xFF898989),
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  final datePicked1Date =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                        getCurrentTimestamp,
                                                    firstDate: DateTime(1900),
                                                    lastDate: DateTime(2050),
                                                  );

                                                  if (datePicked1Date !=
                                                      null) {
                                                    safeSetState(() {
                                                      _model.datePicked1 =
                                                          DateTime(
                                                        datePicked1Date.year,
                                                        datePicked1Date.month,
                                                        datePicked1Date.day,
                                                      );
                                                    });
                                                  }
                                                  FFAppState().update(() {
                                                    FFAppState()
                                                            .varDataInicial =
                                                        dateTimeFormat(
                                                      'M/d/y',
                                                      _model.datePicked1,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    );
                                                  });
                                                },
                                                text: 'Data Inicial',
                                                icon: const Icon(
                                                  FFIcons.kcalendar,
                                                  size: 20.0,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 40.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Colors.transparent,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Satoshi',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Satoshi'),
                                                      ),
                                                  elevation: 0.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18.0),
                                                ),
                                              ),
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  final datePicked2Date =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                        getCurrentTimestamp,
                                                    firstDate: DateTime(1900),
                                                    lastDate: DateTime(2050),
                                                  );

                                                  if (datePicked2Date !=
                                                      null) {
                                                    safeSetState(() {
                                                      _model.datePicked2 =
                                                          DateTime(
                                                        datePicked2Date.year,
                                                        datePicked2Date.month,
                                                        datePicked2Date.day,
                                                      );
                                                    });
                                                  }
                                                  FFAppState().update(() {
                                                    FFAppState().varDataFinal =
                                                        dateTimeFormat(
                                                      'M/d/y',
                                                      _model.datePicked2,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    );
                                                  });
                                                },
                                                text: 'Data Final',
                                                icon: const Icon(
                                                  FFIcons.kcalendar,
                                                  size: 20.0,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 40.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Colors.transparent,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Satoshi',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Satoshi'),
                                                      ),
                                                  elevation: 0.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18.0),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 12.0)),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 12.0)),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          SingleChildScrollView(
                                            primary: false,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 1500.0,
                                                  height: 587.0,
                                                  decoration: const BoxDecoration(),
                                                  child: FutureBuilder<
                                                      List<Producoesv2Row>>(
                                                    future: Producoesv2Table()
                                                        .queryRows(
                                                      queryFn: (q) => q
                                                          .eq(
                                                            'producoes_historicos_id',
                                                            widget
                                                                .producoesHistoricoID,
                                                          )
                                                          .gte(
                                                            'Data Movimento',
                                                            FFAppState()
                                                                .varDataInicial,
                                                          )
                                                          .lte(
                                                            'Data Movimento',
                                                            FFAppState()
                                                                .varDataFinal,
                                                          ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            child:
                                                                SpinKitThreeBounce(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              size: 40.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<Producoesv2Row>
                                                          lvComissoesProducoesv2RowList =
                                                          snapshot.data!;
                                                      if (lvComissoesProducoesv2RowList
                                                          .isEmpty) {
                                                        return const NaoEncontrouDadosWidget();
                                                      }
                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            lvComissoesProducoesv2RowList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => const SizedBox(
                                                                height: 6.0),
                                                        itemBuilder: (context,
                                                            lvComissoesIndex) {
                                                          final lvComissoesProducoesv2Row =
                                                              lvComissoesProducoesv2RowList[
                                                                  lvComissoesIndex];
                                                          return Container(
                                                            height: 70.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  const Color(
                                                                      0xFF0C291F),
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground
                                                                ],
                                                                stops: const [
                                                                  0.0,
                                                                  0.7
                                                                ],
                                                                begin:
                                                                    const AlignmentDirectional(
                                                                        0.5,
                                                                        -1.0),
                                                                end:
                                                                    const AlignmentDirectional(
                                                                        -0.5,
                                                                        1.0),
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                          12.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width: 5.0,
                                                                    height:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            '#${valueOrDefault<String>(
                                                                              lvComissoesProducoesv2Row.idProducao.toString(),
                                                                              '0',
                                                                            )}',
                                                                            '0',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: const Color(0x80FFFFFF),
                                                                                fontSize: 10.0,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              'Data Movimento: ${lvComissoesProducoesv2Row.dataMovimento}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Satoshi',
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey('Satoshi'),
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Cód. Produto: ${lvComissoesProducoesv2Row.codigoProduto?.toString()}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Satoshi',
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey('Satoshi'),
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Cód Convênio: ${lvComissoesProducoesv2Row.codigoConvenio?.toString()}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Satoshi',
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey('Satoshi'),
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Proposta: ${lvComissoesProducoesv2Row.numeroProposta?.toString()}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Satoshi',
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey('Satoshi'),
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Valor Financ. Líquido: ${formatNumber(
                                                                                lvComissoesProducoesv2Row.valorFinanciadoLiquido,
                                                                                formatType: FormatType.decimal,
                                                                                decimalType: DecimalType.commaDecimal,
                                                                                currency: 'R\$',
                                                                              )}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Satoshi',
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey('Satoshi'),
                                                                                  ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 12.0)),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              height: 6.0)),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children:
                                                                            [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Icon(
                                                                              FFIcons.kchevronRight,
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ].divide(const SizedBox(width: 12.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'containerOnPageLoadAnimation']!);
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 12.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 12.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.95, 0.91),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'cadNovaAgencia',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondary,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'importar_producao',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          child: Icon(
                            FFIcons.kplus,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
