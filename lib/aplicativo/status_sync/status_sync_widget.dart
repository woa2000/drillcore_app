import '/aplicativo/componentes/card_sync/card_sync_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'status_sync_model.dart';
export 'status_sync_model.dart';

class StatusSyncWidget extends StatefulWidget {
  const StatusSyncWidget({super.key});

  static String routeName = 'StatusSync';
  static String routePath = '/statusSync';

  @override
  State<StatusSyncWidget> createState() => _StatusSyncWidgetState();
}

class _StatusSyncWidgetState extends State<StatusSyncWidget> {
  late StatusSyncModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusSyncModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 0.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(HomePageWidget.routeName);
              },
              child: FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 24.0,
              ),
            ),
          ),
          title: Text(
            'Configurações',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.outfit(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cardSyncModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: CardSyncWidget(
                          titulo: 'Clientes',
                          qtd: FFAppState().clientes.length,
                          updatedAt:
                              FFAppState().clientes.lastOrNull?.updatedAt,
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cardSyncModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: CardSyncWidget(
                          titulo: 'Projetos',
                          qtd: valueOrDefault<int>(
                            FFAppState().projetos.length,
                            0,
                          ),
                          updatedAt:
                              FFAppState().projetos.lastOrNull?.updatedAt,
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cardSyncModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: CardSyncWidget(
                          titulo: 'Alvos',
                          qtd: valueOrDefault<int>(
                            FFAppState().alvos.length,
                            0,
                          ),
                          updatedAt: FFAppState().alvos.lastOrNull?.updatedAt,
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 10.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cardSyncModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: CardSyncWidget(
                          titulo: 'Sondas',
                          qtd: valueOrDefault<int>(
                            FFAppState().sondas.length,
                            0,
                          ),
                          updatedAt: FFAppState().sondas.lastOrNull?.updatedAt,
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cardSyncModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: CardSyncWidget(
                          titulo: 'Furos',
                          qtd: valueOrDefault<int>(
                            FFAppState().furos.length,
                            0,
                          ),
                          updatedAt: FFAppState().furos.lastOrNull?.updatedAt,
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cardSyncModel6,
                        updateCallback: () => safeSetState(() {}),
                        child: CardSyncWidget(
                          titulo: 'Turnos',
                          qtd: valueOrDefault<int>(
                            FFAppState().turnos.length,
                            0,
                          ),
                          updatedAt: FFAppState().turnos.lastOrNull?.updatedAt,
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 10.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cardSyncModel7,
                        updateCallback: () => safeSetState(() {}),
                        child: CardSyncWidget(
                          titulo: 'Equipes',
                          qtd: valueOrDefault<int>(
                            FFAppState().equipes.length,
                            0,
                          ),
                          updatedAt: FFAppState().equipes.lastOrNull?.updatedAt,
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cardSyncModel8,
                        updateCallback: () => safeSetState(() {}),
                        child: CardSyncWidget(
                          titulo: 'Equipe Projeto',
                          qtd: valueOrDefault<int>(
                            FFAppState().equipeProjeto.length,
                            0,
                          ),
                          updatedAt:
                              FFAppState().equipeProjeto.lastOrNull?.updatedAt,
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cardSyncModel9,
                        updateCallback: () => safeSetState(() {}),
                        child: CardSyncWidget(
                          titulo: 'Atividades',
                          qtd: valueOrDefault<int>(
                            FFAppState().atividades.length,
                            0,
                          ),
                          updatedAt:
                              FFAppState().atividades.lastOrNull?.updatedAt,
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 10.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cardSyncModel10,
                        updateCallback: () => safeSetState(() {}),
                        child: CardSyncWidget(
                          titulo: 'Litologia',
                          qtd: FFAppState().lstConsistencia.length,
                          updatedAt: FFAppState()
                              .lstConsistencia
                              .lastOrNull
                              ?.updatedAt,
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cardSyncModel11,
                        updateCallback: () => safeSetState(() {}),
                        child: CardSyncWidget(
                          titulo: 'DIP',
                          qtd: FFAppState().lstOrientacao.length,
                          updatedAt: FFAppState()
                              .lstOrientacao
                              .sortedList(
                                  keyOf: (e) => e.updatedAt!, desc: false)
                              .lastOrNull
                              ?.updatedAt,
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cardSyncModel12,
                        updateCallback: () => safeSetState(() {}),
                        child: CardSyncWidget(
                          titulo: 'Diâmetro',
                          qtd: FFAppState().lstDiametro.length,
                          updatedAt: getCurrentTimestamp,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cardSyncModel13,
                        updateCallback: () => safeSetState(() {}),
                        child: CardSyncWidget(
                          titulo: 'Parâmetros',
                          qtd: FFAppState().parametros.hasUpdatedAt() ? 1 : 0,
                          updatedAt: FFAppState().parametros.updatedAt,
                        ),
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
