import '/aplicativo/componentes/card_tabelas/card_tabelas_widget.dart';
import '/aplicativo/componentes/modal_resetar_informacoes/modal_resetar_informacoes_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'configuracao_model.dart';
export 'configuracao_model.dart';

class ConfiguracaoWidget extends StatefulWidget {
  const ConfiguracaoWidget({super.key});

  static String routeName = 'Configuracao';
  static String routePath = '/configuracao';

  @override
  State<ConfiguracaoWidget> createState() => _ConfiguracaoWidgetState();
}

class _ConfiguracaoWidgetState extends State<ConfiguracaoWidget> {
  late ConfiguracaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfiguracaoModel());
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
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Builder(
                              builder: (context) => FFButtonWidget(
                                onPressed: () async {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(dialogContext)
                                                .unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child:
                                              ModalResetarInformacoesWidget(),
                                        ),
                                      );
                                    },
                                  );
                                },
                                text: 'Limpar Tudo',
                                options: FFButtonOptions(
                                  width: 200.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).error,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            if (false)
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(StatusSyncWidget.routeName);
                                },
                                text: 'Status Sync',
                                options: FFButtonOptions(
                                  width: 200.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).success,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    wrapWithModel(
                                      model: _model.cardTabelasModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardTabelasWidget(
                                        tabela: 'Clientes',
                                        registros: FFAppState().clientes.length,
                                        atualizacao: FFAppState()
                                            .clientes
                                            .sortedList(
                                                keyOf: (e) => e.updatedAt!,
                                                desc: false)
                                            .lastOrNull
                                            ?.updatedAt,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardTabelasModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardTabelasWidget(
                                        tabela: 'Projetos',
                                        registros: FFAppState().projetos.length,
                                        atualizacao: FFAppState()
                                            .projetos
                                            .sortedList(
                                                keyOf: (e) => e.updatedAt!,
                                                desc: false)
                                            .lastOrNull
                                            ?.updatedAt,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardTabelasModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardTabelasWidget(
                                        tabela: 'Atividades',
                                        registros:
                                            FFAppState().atividades.length,
                                        atualizacao: FFAppState()
                                            .atividades
                                            .sortedList(
                                                keyOf: (e) => e.updatedAt!,
                                                desc: false)
                                            .lastOrNull
                                            ?.updatedAt,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    wrapWithModel(
                                      model: _model.cardTabelasModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardTabelasWidget(
                                        tabela: 'Equipe',
                                        registros: FFAppState().equipes.length,
                                        atualizacao: FFAppState()
                                            .equipes
                                            .sortedList(
                                                keyOf: (e) => e.updatedAt!,
                                                desc: false)
                                            .lastOrNull
                                            ?.updatedAt,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardTabelasModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardTabelasWidget(
                                        tabela: 'Equipe Projetos',
                                        registros:
                                            FFAppState().equipeProjeto.length,
                                        atualizacao: FFAppState()
                                            .equipeProjeto
                                            .sortedList(
                                                keyOf: (e) => e.updatedAt!,
                                                desc: false)
                                            .lastOrNull
                                            ?.updatedAt,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardTabelasModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardTabelasWidget(
                                        tabela: 'Alvos',
                                        registros: FFAppState().alvos.length,
                                        atualizacao: FFAppState()
                                            .alvos
                                            .sortedList(
                                                keyOf: (e) => e.updatedAt!,
                                                desc: false)
                                            .lastOrNull
                                            ?.updatedAt,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Versão : 1.25.0',
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
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 10.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ].divide(SizedBox(height: 10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
