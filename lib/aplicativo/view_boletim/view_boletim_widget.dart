import '/aplicativo/componentes/consolidado_perfuracao/consolidado_perfuracao_widget.dart';
import '/aplicativo/componentes/grupo_atividades/grupo_atividades_widget.dart';
import '/aplicativo/componentes/header_boletim/header_boletim_widget.dart';
import '/aplicativo/componentes/row_atividade_view_boletim/row_atividade_view_boletim_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'view_boletim_model.dart';
export 'view_boletim_model.dart';

class ViewBoletimWidget extends StatefulWidget {
  const ViewBoletimWidget({
    super.key,
    required this.localID,
    required this.turnoID,
  });

  final String? localID;
  final DocumentReference? turnoID;

  static String routeName = 'ViewBoletim';
  static String routePath = '/viewBoletim';

  @override
  State<ViewBoletimWidget> createState() => _ViewBoletimWidgetState();
}

class _ViewBoletimWidgetState extends State<ViewBoletimWidget> {
  late ViewBoletimModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewBoletimModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().lstAtividades = FFAppState()
          .atividades
          .sortedList(keyOf: (e) => e.codigo, desc: false)
          .toList()
          .cast<AtividadeStruct>();
      FFAppState().pValidateTurno = TurnoStruct(
        inicio: FFAppState()
            .turnos
            .where((e) =>
                e.id ==
                FFAppState()
                    .boletins
                    .where((e) => e.localID == widget.localID)
                    .toList()
                    .firstOrNull
                    ?.turnoID)
            .toList()
            .firstOrNull
            ?.inicio,
        termino: FFAppState()
            .turnos
            .where((e) =>
                e.id ==
                FFAppState()
                    .boletins
                    .where((e) => e.localID == widget.localID)
                    .toList()
                    .firstOrNull
                    ?.turnoID)
            .toList()
            .firstOrNull
            ?.termino,
        id: FFAppState()
            .turnos
            .where((e) =>
                e.id ==
                FFAppState()
                    .boletins
                    .where((e) => e.localID == widget.localID)
                    .toList()
                    .firstOrNull
                    ?.turnoID)
            .toList()
            .firstOrNull
            ?.id,
      );
      FFAppState().boletimSelecionado = FFAppState()
          .boletins
          .where((e) => e.localID == widget.localID)
          .toList()
          .firstOrNull!;
      FFAppState().update(() {});
      if (FFAppState()
              .atividadesBoletim
              .where((e) => e.localBoletimID == widget.localID)
              .toList()
              .length >
          0) {
        FFAppState().pInicioAtividade = FFAppState()
            .atividadesBoletim
            .where((e) => e.localBoletimID == widget.localID)
            .toList()
            .sortedList(keyOf: (e) => e.inicio!, desc: false)
            .lastOrNull
            ?.termino;
        FFAppState().pTerminoAtividade = FFAppState()
            .atividadesBoletim
            .where((e) => e.localBoletimID == widget.localID)
            .toList()
            .sortedList(keyOf: (e) => e.termino!, desc: false)
            .lastOrNull
            ?.termino;
        FFAppState().pUltimaAtividade = FFAppState()
            .atividadesBoletim
            .where((e) => e.localBoletimID == widget.localID)
            .toList()
            .sortedList(keyOf: (e) => e.termino!, desc: false)
            .lastOrNull
            ?.atividadeID;
        FFAppState().pValidateInicioAtividade = FFAppState()
            .atividadesBoletim
            .where((e) => e.localBoletimID == widget.localID)
            .toList()
            .sortedList(keyOf: (e) => e.termino!, desc: false)
            .lastOrNull
            ?.termino;
        safeSetState(() {});
      } else {
        FFAppState().pInicioAtividade = functions.strToTime(FFAppState()
            .turnos
            .where((e) => e.id == widget.turnoID)
            .toList()
            .firstOrNull
            ?.inicio);
        FFAppState().pTerminoAtividade = functions.strToTime(FFAppState()
            .turnos
            .where((e) => e.id == widget.turnoID)
            .toList()
            .firstOrNull
            ?.inicio);
        safeSetState(() {});
      }
    });
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
                context.pushNamed(ListaBoletinsWidget.routeName);
              },
              child: FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 24.0,
              ),
            ),
          ),
          title: Text(
            'Boletim',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/DrillGeo-Novo-Logo-2020.png',
                              width: 180.0,
                              height: 60.0,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:
                                  <Widget>[].divide(SizedBox(width: 20.0)),
                            ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                      wrapWithModel(
                        model: _model.headerBoletimModel,
                        updateCallback: () => safeSetState(() {}),
                        child: HeaderBoletimWidget(
                          boletim: FFAppState()
                              .boletins
                              .where((e) => e.localID == widget.localID)
                              .toList()
                              .firstOrNull!,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.consolidadoPerfuracaoModel,
                              updateCallback: () => safeSetState(() {}),
                              child: ConsolidadoPerfuracaoWidget(
                                atividades: FFAppState()
                                    .atividadesBoletim
                                    .where((e) =>
                                        e.localBoletimID == widget.localID)
                                    .toList()
                                    .sortedList(
                                        keyOf: (e) => e.ordem, desc: false),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Código',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Inicio',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Termino',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Duração',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Furo',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'De',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Até',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Avanço',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Recuperação',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              '% Recup.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Builder(
                                builder: (context) {
                                  final lstAtividadesBoletim = FFAppState()
                                      .atividadesBoletim
                                      .where((e) =>
                                          e.localBoletimID == widget.localID)
                                      .toList()
                                      .sortedList(
                                          keyOf: (e) => e.ordem, desc: false)
                                      .toList();

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount: lstAtividadesBoletim.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 4.0),
                                    itemBuilder:
                                        (context, lstAtividadesBoletimIndex) {
                                      final lstAtividadesBoletimItem =
                                          lstAtividadesBoletim[
                                              lstAtividadesBoletimIndex];
                                      return RowAtividadeViewBoletimWidget(
                                        key: Key(
                                            'Keyo9e_${lstAtividadesBoletimIndex}_of_${lstAtividadesBoletim.length}'),
                                        index: lstAtividadesBoletimIndex,
                                        atividadeBoletim:
                                            lstAtividadesBoletimItem,
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.grupoAtividadesModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: GrupoAtividadesWidget(
                                tipo: 'HORAS PRODUTIVAS',
                                atividades: FFAppState()
                                    .atividadesBoletim
                                    .where((e) =>
                                        e.localBoletimID == widget.localID)
                                    .toList()
                                    .sortedList(
                                        keyOf: (e) => e.ordem, desc: false),
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.grupoAtividadesModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: GrupoAtividadesWidget(
                                tipo: 'HORAS NÃO MECÂNICAS',
                                atividades: FFAppState()
                                    .atividadesBoletim
                                    .where((e) =>
                                        e.localBoletimID == widget.localID)
                                    .toList()
                                    .sortedList(
                                        keyOf: (e) => e.ordem, desc: false),
                              ),
                            ),
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.grupoAtividadesModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: GrupoAtividadesWidget(
                                tipo: 'HORAS MECÂNICAS',
                                atividades: FFAppState()
                                    .atividadesBoletim
                                    .where((e) =>
                                        e.localBoletimID == widget.localID)
                                    .toList()
                                    .sortedList(
                                        keyOf: (e) => e.ordem, desc: false),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
