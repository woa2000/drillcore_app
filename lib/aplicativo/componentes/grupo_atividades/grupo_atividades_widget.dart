import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'grupo_atividades_model.dart';
export 'grupo_atividades_model.dart';

class GrupoAtividadesWidget extends StatefulWidget {
  const GrupoAtividadesWidget({
    super.key,
    required this.tipo,
    required this.atividades,
  });

  final String? tipo;
  final List<AtividadeBoletimStruct>? atividades;

  @override
  State<GrupoAtividadesWidget> createState() => _GrupoAtividadesWidgetState();
}

class _GrupoAtividadesWidgetState extends State<GrupoAtividadesWidget>
    with TickerProviderStateMixin {
  late GrupoAtividadesModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GrupoAtividadesModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.atividadesTipo = FFAppState()
          .atividades
          .where((e) => e.tipo == widget.tipo)
          .toList()
          .toList()
          .cast<AtividadeStruct>();
      _model.duracaoMinutosGrupo = 0;
      _model.duracaoMinutosTotal = 0;
      safeSetState(() {});
      FFAppState().contador = 0;
      safeSetState(() {});
      while (FFAppState().contador < widget.atividades!.length) {
        if (widget.tipo ==
            FFAppState()
                .atividades
                .where((e) =>
                    e.id ==
                    (widget.atividades?.elementAtOrNull(FFAppState().contador))
                        ?.atividadeID)
                .toList()
                .firstOrNull
                ?.tipo) {
          _model.addToAtividadesGrupo(AtividadeBoletimStruct(
            atividadeID:
                (widget.atividades?.elementAtOrNull(FFAppState().contador))
                    ?.atividadeID,
            inicio: (widget.atividades?.elementAtOrNull(FFAppState().contador))
                ?.inicio,
            termino:
                (widget.atividades?.elementAtOrNull(FFAppState().contador))
                    ?.termino,
          ));
          safeSetState(() {});
          _model.duracaoMinutosGrupo = _model.duracaoMinutosGrupo! +
              functions.duracaoAtividadeEmMinutos(
                  dateTimeFormat(
                      "Hm",
                      (widget.atividades
                              ?.elementAtOrNull(FFAppState().contador))
                          ?.inicio),
                  dateTimeFormat(
                      "Hm",
                      (widget.atividades
                              ?.elementAtOrNull(FFAppState().contador))
                          ?.termino))!;
          safeSetState(() {});
        }
        _model.duracaoMinutosTotal = _model.duracaoMinutosTotal! +
            functions.duracaoAtividadeEmMinutos(
                dateTimeFormat(
                    "Hm",
                    (widget.atividades?.elementAtOrNull(FFAppState().contador))
                        ?.inicio),
                dateTimeFormat(
                    "Hm",
                    (widget.atividades?.elementAtOrNull(FFAppState().contador))
                        ?.termino))!;
        safeSetState(() {});
        FFAppState().contador = FFAppState().contador + 1;
        safeSetState(() {});
      }
      _model.percentual = valueOrDefault<double>(
        (_model.duracaoMinutosGrupo!) / (_model.duracaoMinutosTotal!),
        0.0,
      );
      safeSetState(() {});
    });

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
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'progressBarOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-50.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
      height: MediaQuery.sizeOf(context).height * 1.0,
      constraints: BoxConstraints(
        minHeight: 200.0,
        maxHeight: 300.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.tipo,
                          'Tipo',
                        ),
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  font: GoogleFonts.outfit(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          'Tempo Total',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            functions
                                .duracaoFormatada(_model.duracaoMinutosGrupo),
                            '00:00',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                font: GoogleFonts.outfit(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .fontStyle,
                              ),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation']!),
                ),
                CircularPercentIndicator(
                  percent: _model.percentual!,
                  radius: 40.0,
                  lineWidth: 8.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: FlutterFlowTheme.of(context).primary,
                  backgroundColor: FlutterFlowTheme.of(context).alternate,
                  center: Text(
                    valueOrDefault<String>(
                      formatNumber(
                        (_model.percentual!) * 10,
                        formatType: FormatType.custom,
                        format: '0,0%',
                        locale: 'pt_BR',
                      ),
                      '0%',
                    ),
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          font: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontStyle,
                        ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['progressBarOnPageLoadAnimation']!),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 5.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final atividades = _model.atividadesGrupo.toList();

                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(atividades.length,
                                (atividadesIndex) {
                              final atividadesItem =
                                  atividades[atividadesIndex];
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      '${FFAppState().atividades.where((e) => e.id == atividadesItem.atividadeID).toList().firstOrNull?.codigo} - ${FFAppState().atividades.where((e) => e.id == atividadesItem.atividadeID).toList().firstOrNull?.nomeAtividade}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      valueOrDefault<String>(
                                        functions.duracaoAtividade(
                                            dateTimeFormat(
                                                "Hm", atividadesItem.inicio),
                                            dateTimeFormat(
                                                "Hm", atividadesItem.termino)),
                                        '00:00',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 10.0)),
                              );
                            }).divide(SizedBox(height: 5.0)),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
