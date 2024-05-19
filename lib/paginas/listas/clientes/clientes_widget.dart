import '/backend/supabase/supabase.dart';
import '/componentes/mn_lateral/mn_lateral_widget.dart';
import '/componentes/mn_superior/mn_superior_widget.dart';
import '/componentes/nao_encontrou_dados/nao_encontrou_dados_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'clientes_model.dart';
export 'clientes_model.dart';

class ClientesWidget extends StatefulWidget {
  const ClientesWidget({super.key});

  @override
  State<ClientesWidget> createState() => _ClientesWidgetState();
}

class _ClientesWidgetState extends State<ClientesWidget>
    with TickerProviderStateMixin {
  late ClientesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClientesModel());

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
    return Title(
        title: 'Clientes',
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.mnLateralModel,
                        updateCallback: () => setState(() {}),
                        child: const MnLateralWidget(),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
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
                                            'Clientes',
                                            style: FlutterFlowTheme.of(context)
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
                                            'Veja e gerencie todos os clientes do sistema abaixo',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Satoshi',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Satoshi'),
                                                ),
                                          ),
                                        ]
                                            .divide(const SizedBox(height: 0.0))
                                            .addToStart(const SizedBox(height: 0.0)),
                                      ),
                                    ],
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          width: 1500.0,
                                          height: 550.0,
                                          decoration: const BoxDecoration(),
                                          child:
                                              FutureBuilder<List<ClientesRow>>(
                                            future: ClientesTable().queryRows(
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 40.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ClientesRow>
                                                  lvUsuariosClientesRowList =
                                                  snapshot.data!;
                                              if (lvUsuariosClientesRowList
                                                  .isEmpty) {
                                                return const NaoEncontrouDadosWidget();
                                              }
                                              return ListView.separated(
                                                padding: EdgeInsets.zero,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    lvUsuariosClientesRowList
                                                        .length,
                                                separatorBuilder: (_, __) =>
                                                    const SizedBox(height: 6.0),
                                                itemBuilder:
                                                    (context, lvUsuariosIndex) {
                                                  final lvUsuariosClientesRow =
                                                      lvUsuariosClientesRowList[
                                                          lvUsuariosIndex];
                                                  return Container(
                                                    height: 70.0,
                                                    decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          const Color(0xFF0C291F),
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground
                                                        ],
                                                        stops: const [0.0, 0.7],
                                                        begin:
                                                            const AlignmentDirectional(
                                                                0.5, -1.0),
                                                        end:
                                                            const AlignmentDirectional(
                                                                -0.5, 1.0),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(12.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 5.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    '#${lvUsuariosClientesRow.idCliente.toString()}',
                                                                    '0',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: const Color(
                                                                            0x80FFFFFF),
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        'Nome: ${valueOrDefault<String>(
                                                                          lvUsuariosClientesRow
                                                                              .nomeCliente,
                                                                          'Nome do Cliente',
                                                                        )}',
                                                                        'Nome do Cliente',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        'CPF: ${valueOrDefault<String>(
                                                                          lvUsuariosClientesRow
                                                                              .cpfCliente,
                                                                          'CPF Cliente',
                                                                        )}',
                                                                        'CPF Cliente',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        'Status do Atendimento: ${valueOrDefault<String>(
                                                                          lvUsuariosClientesRow
                                                                              .statusAtendimento,
                                                                          'Status',
                                                                        )}',
                                                                        'Status',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      width:
                                                                          12.0)),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height: 6.0)),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                                  const BoxDecoration(),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Card(
                                                                    clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                    color: () {
                                                                      if (lvUsuariosClientesRow
                                                                              .tier ==
                                                                          'Ouro') {
                                                                        return FlutterFlowTheme.of(context)
                                                                            .warning;
                                                                      } else if (lvUsuariosClientesRow
                                                                              .tier ==
                                                                          'Prata') {
                                                                        return const Color(
                                                                            0xFF969696);
                                                                      } else if (lvUsuariosClientesRow
                                                                              .tier ==
                                                                          'Bronze') {
                                                                        return const Color(
                                                                            0xFFC38080);
                                                                      } else {
                                                                        return FlutterFlowTheme.of(context)
                                                                            .secondaryBackground;
                                                                      }
                                                                    }(),
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              8.0),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          lvUsuariosClientesRow
                                                                              .tier,
                                                                          'Tier',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        context
                                                                            .pushNamed(
                                                                          'detalhesCliente',
                                                                          queryParameters:
                                                                              {
                                                                            'nomeCliente':
                                                                                serializeParam(
                                                                              lvUsuariosClientesRow.nomeCliente,
                                                                              ParamType.String,
                                                                            ),
                                                                            'emailCliente':
                                                                                serializeParam(
                                                                              lvUsuariosClientesRow.email,
                                                                              ParamType.String,
                                                                            ),
                                                                            'cpf':
                                                                                serializeParam(
                                                                              lvUsuariosClientesRow.cpfCliente,
                                                                              ParamType.String,
                                                                            ),
                                                                            'dataNascimento':
                                                                                serializeParam(
                                                                              lvUsuariosClientesRow.dataNascimento,
                                                                              ParamType.String,
                                                                            ),
                                                                            'codConvenio':
                                                                                serializeParam(
                                                                              lvUsuariosClientesRow.codigoConvenio,
                                                                              ParamType.int,
                                                                            ),
                                                                            'matricula':
                                                                                serializeParam(
                                                                              lvUsuariosClientesRow.matriculaCliente,
                                                                              ParamType.int,
                                                                            ),
                                                                            'dataCadastro':
                                                                                serializeParam(
                                                                              lvUsuariosClientesRow.createdAt?.toString(),
                                                                              ParamType.String,
                                                                            ),
                                                                            'celular':
                                                                                serializeParam(
                                                                              lvUsuariosClientesRow.tel01,
                                                                              ParamType.int,
                                                                            ),
                                                                            'estado':
                                                                                serializeParam(
                                                                              lvUsuariosClientesRow.sgUF,
                                                                              ParamType.String,
                                                                            ),
                                                                            'prefixRelacionamento':
                                                                                serializeParam(
                                                                              lvUsuariosClientesRow.prefixoRelacionamento,
                                                                              ParamType.int,
                                                                            ),
                                                                            'prefixDependencia':
                                                                                serializeParam(
                                                                              lvUsuariosClientesRow.prefixoDependencia,
                                                                              ParamType.int,
                                                                            ),
                                                                            'fotoPath':
                                                                                serializeParam(
                                                                              lvUsuariosClientesRow.fotoPath,
                                                                              ParamType.String,
                                                                            ),
                                                                          }.withoutNulls,
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            kTransitionInfoKey:
                                                                                const TransitionInfo(
                                                                              hasTransition: true,
                                                                              transitionType: PageTransitionType.fade,
                                                                            ),
                                                                          },
                                                                        );
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        FFIcons
                                                                            .kchevronRight,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        12.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'containerOnPageLoadAnimation']!);
                                                },
                                              );
                                            },
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
