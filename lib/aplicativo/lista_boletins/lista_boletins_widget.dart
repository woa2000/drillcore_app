import '/aplicativo/componentes/row_boletim/row_boletim_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lista_boletins_model.dart';
export 'lista_boletins_model.dart';

class ListaBoletinsWidget extends StatefulWidget {
  const ListaBoletinsWidget({super.key});

  static String routeName = 'ListaBoletins';
  static String routePath = '/listaBoletins';

  @override
  State<ListaBoletinsWidget> createState() => _ListaBoletinsWidgetState();
}

class _ListaBoletinsWidgetState extends State<ListaBoletinsWidget> {
  late ListaBoletinsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListaBoletinsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 1000),
        callback: (timer) async {
          _model.comInternet = await actions.checkInternetConnection();

          safeSetState(() {});
        },
        startImmediately: true,
      );
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
            'Boletim Eletrônico',
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
                child: Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (_model.comInternet! &&
                                    (FFAppState()
                                            .boletins
                                            .where((e) => e.sync == false)
                                            .toList()
                                            .length >
                                        0))
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.syncFuros = FFAppState()
                                          .furos
                                          .where((e) => e.sync == false)
                                          .toList()
                                          .cast<FuroStruct>();
                                      safeSetState(() {});
                                      FFAppState().contador = 0;
                                      safeSetState(() {});
                                      while (FFAppState().contador <
                                          _model.syncFuros.length) {
                                        if (_model.syncFuros
                                                .elementAtOrNull(
                                                    FFAppState().contador)
                                                ?.id !=
                                            null) {
                                          await _model.syncFuros
                                              .elementAtOrNull(
                                                  FFAppState().contador)!
                                              .id!
                                              .update(createFuroRecordData(
                                                localID: _model.syncFuros
                                                    .elementAtOrNull(
                                                        FFAppState().contador)
                                                    ?.localID,
                                                profundidade: _model.syncFuros
                                                    .elementAtOrNull(
                                                        FFAppState().contador)
                                                    ?.profundidade,
                                              ));
                                        } else {
                                          var furoRecordReference =
                                              FuroRecord.collection.doc();
                                          await furoRecordReference
                                              .set(createFuroRecordData(
                                            alvoID: _model.syncFuros
                                                .elementAtOrNull(
                                                    FFAppState().contador)
                                                ?.alvoID,
                                            nomeFuro: _model.syncFuros
                                                .elementAtOrNull(
                                                    FFAppState().contador)
                                                ?.nomeFuro,
                                            furoOrientado: _model.syncFuros
                                                .elementAtOrNull(
                                                    FFAppState().contador)
                                                ?.furoOrientado,
                                            createdAt: _model.syncFuros
                                                .elementAtOrNull(
                                                    FFAppState().contador)
                                                ?.createdAt,
                                            updatedAt: _model.syncFuros
                                                .elementAtOrNull(
                                                    FFAppState().contador)
                                                ?.updatedAt,
                                            status: _model.syncFuros
                                                .elementAtOrNull(
                                                    FFAppState().contador)
                                                ?.status,
                                            localID: _model.syncFuros
                                                .elementAtOrNull(
                                                    FFAppState().contador)
                                                ?.localID,
                                            profundidade: _model.syncFuros
                                                .elementAtOrNull(
                                                    FFAppState().contador)
                                                ?.profundidade,
                                            sync: true,
                                          ));
                                          _model.newFuroFB =
                                              FuroRecord.getDocumentFromData(
                                                  createFuroRecordData(
                                                    alvoID: _model.syncFuros
                                                        .elementAtOrNull(
                                                            FFAppState()
                                                                .contador)
                                                        ?.alvoID,
                                                    nomeFuro: _model.syncFuros
                                                        .elementAtOrNull(
                                                            FFAppState()
                                                                .contador)
                                                        ?.nomeFuro,
                                                    furoOrientado: _model
                                                        .syncFuros
                                                        .elementAtOrNull(
                                                            FFAppState()
                                                                .contador)
                                                        ?.furoOrientado,
                                                    createdAt: _model.syncFuros
                                                        .elementAtOrNull(
                                                            FFAppState()
                                                                .contador)
                                                        ?.createdAt,
                                                    updatedAt: _model.syncFuros
                                                        .elementAtOrNull(
                                                            FFAppState()
                                                                .contador)
                                                        ?.updatedAt,
                                                    status: _model.syncFuros
                                                        .elementAtOrNull(
                                                            FFAppState()
                                                                .contador)
                                                        ?.status,
                                                    localID: _model.syncFuros
                                                        .elementAtOrNull(
                                                            FFAppState()
                                                                .contador)
                                                        ?.localID,
                                                    profundidade: _model
                                                        .syncFuros
                                                        .elementAtOrNull(
                                                            FFAppState()
                                                                .contador)
                                                        ?.profundidade,
                                                    sync: true,
                                                  ),
                                                  furoRecordReference);
                                          _model.updateSyncFurosAtIndex(
                                            FFAppState().contador,
                                            (e) => e
                                              ..id = _model.syncFuros
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.id,
                                          );
                                          safeSetState(() {});
                                        }

                                        FFAppState().removeFromFuros(
                                            FFAppState()
                                                .furos
                                                .where((e) =>
                                                    e.localID ==
                                                    _model.syncFuros
                                                        .elementAtOrNull(
                                                            FFAppState()
                                                                .contador)
                                                        ?.localID)
                                                .toList()
                                                .firstOrNull!);
                                        safeSetState(() {});
                                        FFAppState().addToFuros(FuroStruct(
                                          localID: _model.syncFuros
                                              .elementAtOrNull(
                                                  FFAppState().contador)
                                              ?.localID,
                                          id: _model.syncFuros
                                              .elementAtOrNull(
                                                  FFAppState().contador)
                                              ?.id,
                                          nomeFuro: _model.syncFuros
                                              .elementAtOrNull(
                                                  FFAppState().contador)
                                              ?.nomeFuro,
                                          status: _model.syncFuros
                                              .elementAtOrNull(
                                                  FFAppState().contador)
                                              ?.status,
                                          furoOrientado: _model.syncFuros
                                              .elementAtOrNull(
                                                  FFAppState().contador)
                                              ?.furoOrientado,
                                          alvoID: _model.syncFuros
                                              .elementAtOrNull(
                                                  FFAppState().contador)
                                              ?.alvoID,
                                          sync: true,
                                          profundidade: _model.syncFuros
                                              .elementAtOrNull(
                                                  FFAppState().contador)
                                              ?.profundidade,
                                        ));
                                        safeSetState(() {});
                                        FFAppState().contador =
                                            FFAppState().contador + 1;
                                        safeSetState(() {});
                                      }
                                      _model.syncBoletim = FFAppState()
                                          .boletins
                                          .where((e) =>
                                              (e.sync == false) &&
                                              (e.concluido == true))
                                          .toList()
                                          .cast<BoletimStruct>();
                                      safeSetState(() {});
                                      FFAppState().contador = 0;
                                      safeSetState(() {});
                                      while (FFAppState().contador <
                                          _model.syncBoletim.length) {
                                        if (_model.syncBoletim
                                                .elementAtOrNull(
                                                    FFAppState().contador)
                                                ?.id !=
                                            null) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Sync'),
                                                content: Text(
                                                    '2 - COM FB - ${_model.syncBoletim.elementAtOrNull(FFAppState().contador)?.id?.id}'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        } else {
                                          // Supervisores
                                          _model.incEquipe = 0;
                                          _model.lstSupervisoresBoletim = [];
                                          safeSetState(() {});
                                          while (_model.incEquipe! <
                                              _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)!
                                                  .supervisores
                                                  .length) {
                                            _model.addToLstSupervisoresBoletim(
                                                _model.syncBoletim
                                                    .elementAtOrNull(
                                                        FFAppState().contador)!
                                                    .supervisores
                                                    .elementAtOrNull(
                                                        _model.incEquipe!)!);
                                            safeSetState(() {});
                                            _model.incEquipe =
                                                _model.incEquipe! + 1;
                                            safeSetState(() {});
                                          }
                                          // Operadores
                                          _model.incEquipe = 0;
                                          _model.lstOperadoresBoletim = [];
                                          safeSetState(() {});
                                          while (_model.incEquipe! <
                                              _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)!
                                                  .operadores
                                                  .length) {
                                            _model.addToLstOperadoresBoletim(
                                                _model.syncBoletim
                                                    .elementAtOrNull(
                                                        FFAppState().contador)!
                                                    .operadores
                                                    .elementAtOrNull(
                                                        _model.incEquipe!)!);
                                            safeSetState(() {});
                                            _model.incEquipe =
                                                _model.incEquipe! + 1;
                                            safeSetState(() {});
                                          }
                                          // Auxiliares
                                          _model.incEquipe = 0;
                                          _model.lstAuxiliaresBoletim = [];
                                          safeSetState(() {});
                                          while (_model.incEquipe! <
                                              _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)!
                                                  .auxiliares
                                                  .length) {
                                            _model.addToLstAuxiliaresBoletim(
                                                _model.syncBoletim
                                                    .elementAtOrNull(
                                                        FFAppState().contador)!
                                                    .auxiliares
                                                    .elementAtOrNull(
                                                        _model.incEquipe!)!);
                                            safeSetState(() {});
                                            _model.incEquipe =
                                                _model.incEquipe! + 1;
                                            safeSetState(() {});
                                          }

                                          var boletimRecordReference =
                                              BoletimRecord.collection.doc();
                                          await boletimRecordReference.set({
                                            ...createBoletimRecordData(
                                              data: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.data,
                                              inclinacao: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.inclinacao,
                                              azimute: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.azimute,
                                              horimetroInicial: _model
                                                  .syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.horimetroInicial,
                                              horimetroFinal: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.horimetroFinal,
                                              createdAt: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.createdAt,
                                              updatedAt: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.updatedAt,
                                              clienteID: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.clienteID,
                                              projetoID: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.projetoID,
                                              alvoID: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.alvoID,
                                              turnoID: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.turnoID,
                                              sondaID: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.sondaID,
                                              localID: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.localID,
                                              concluido: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.concluido,
                                              sync: true,
                                              cliente: updateClienteStruct(
                                                FFAppState()
                                                    .clientes
                                                    .where((e) =>
                                                        e.id ==
                                                        _model.syncBoletim
                                                            .elementAtOrNull(
                                                                FFAppState()
                                                                    .contador)
                                                            ?.clienteID)
                                                    .toList()
                                                    .firstOrNull,
                                                clearUnsetFields: false,
                                                create: true,
                                              ),
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'supervisores': _model
                                                    .lstSupervisoresBoletim,
                                                'auxiliares':
                                                    _model.lstAuxiliaresBoletim,
                                                'operadores':
                                                    _model.lstOperadoresBoletim,
                                                'furosBoletim':
                                                    getFuroBoletimListFirestoreData(
                                                  FFAppState()
                                                      .furosBoletim
                                                      .where((e) =>
                                                          e.localBoletimID ==
                                                          _model.syncBoletim
                                                              .elementAtOrNull(
                                                                  FFAppState()
                                                                      .contador)
                                                              ?.localID)
                                                      .toList(),
                                                ),
                                              },
                                            ),
                                          });
                                          _model.newBoletimFB = BoletimRecord
                                              .getDocumentFromData({
                                            ...createBoletimRecordData(
                                              data: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.data,
                                              inclinacao: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.inclinacao,
                                              azimute: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.azimute,
                                              horimetroInicial: _model
                                                  .syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.horimetroInicial,
                                              horimetroFinal: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.horimetroFinal,
                                              createdAt: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.createdAt,
                                              updatedAt: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.updatedAt,
                                              clienteID: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.clienteID,
                                              projetoID: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.projetoID,
                                              alvoID: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.alvoID,
                                              turnoID: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.turnoID,
                                              sondaID: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.sondaID,
                                              localID: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.localID,
                                              concluido: _model.syncBoletim
                                                  .elementAtOrNull(
                                                      FFAppState().contador)
                                                  ?.concluido,
                                              sync: true,
                                              cliente: updateClienteStruct(
                                                FFAppState()
                                                    .clientes
                                                    .where((e) =>
                                                        e.id ==
                                                        _model.syncBoletim
                                                            .elementAtOrNull(
                                                                FFAppState()
                                                                    .contador)
                                                            ?.clienteID)
                                                    .toList()
                                                    .firstOrNull,
                                                clearUnsetFields: false,
                                                create: true,
                                              ),
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'supervisores': _model
                                                    .lstSupervisoresBoletim,
                                                'auxiliares':
                                                    _model.lstAuxiliaresBoletim,
                                                'operadores':
                                                    _model.lstOperadoresBoletim,
                                                'furosBoletim':
                                                    getFuroBoletimListFirestoreData(
                                                  FFAppState()
                                                      .furosBoletim
                                                      .where((e) =>
                                                          e.localBoletimID ==
                                                          _model.syncBoletim
                                                              .elementAtOrNull(
                                                                  FFAppState()
                                                                      .contador)
                                                              ?.localID)
                                                      .toList(),
                                                ),
                                              },
                                            ),
                                          }, boletimRecordReference);
                                          // Atividade Boletim
                                          _model.incAtividades = 0;
                                          _model.syncAtividadeBoletim =
                                              FFAppState()
                                                  .atividadesBoletim
                                                  .where((e) =>
                                                      e.localBoletimID ==
                                                      _model.syncBoletim
                                                          .elementAtOrNull(
                                                              FFAppState()
                                                                  .contador)
                                                          ?.localID)
                                                  .toList()
                                                  .cast<
                                                      AtividadeBoletimStruct>();
                                          safeSetState(() {});
                                          while (_model.incAtividades! <
                                              _model.syncAtividadeBoletim
                                                  .length) {
                                            await AtividadeBoletimRecord
                                                .collection
                                                .doc()
                                                .set(
                                                    createAtividadeBoletimRecordData(
                                                  inicio: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.inicio,
                                                  termino: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.termino,
                                                  de: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.de,
                                                  avanco: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.avanco,
                                                  recuperacao: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.recuperacao,
                                                  caixa: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.caixa,
                                                  diametro: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.diamentro,
                                                  observacao: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.observacao,
                                                  boletimID: _model
                                                      .newBoletimFB?.reference,
                                                  atividadeID: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.atividadeID,
                                                  furoID: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.furoID,
                                                  localID: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.localID,
                                                  ordem: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.ordem,
                                                  dip: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.dip,
                                                  localBoletimID: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.localBoletimID,
                                                  localFuroID: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.localFuroID,
                                                  litologia: _model
                                                      .syncAtividadeBoletim
                                                      .elementAtOrNull(
                                                          _model.incAtividades!)
                                                      ?.litologia,
                                                  sync: true,
                                                ));
                                            _model.incAtividades =
                                                _model.incAtividades! + 1;
                                            safeSetState(() {});
                                          }
                                          // Furo Boletim
                                          _model.incFuroBoletim = 0;
                                          _model.syncFuroBoletim = FFAppState()
                                              .furosBoletim
                                              .where((e) =>
                                                  e.localBoletimID ==
                                                  _model.syncBoletim
                                                      .elementAtOrNull(
                                                          FFAppState().contador)
                                                      ?.localID)
                                              .toList()
                                              .cast<FuroBoletimStruct>();
                                          safeSetState(() {});
                                          while (_model.incFuroBoletim! <
                                              _model.syncFuroBoletim.length) {
                                            _model.furoFB =
                                                await queryFuroRecordOnce(
                                              queryBuilder: (furoRecord) =>
                                                  furoRecord.where(
                                                'localID',
                                                isEqualTo: _model
                                                    .syncFuroBoletim
                                                    .elementAtOrNull(
                                                        _model.incFuroBoletim!)
                                                    ?.localFuroID,
                                              ),
                                              singleRecord: true,
                                            ).then((s) => s.firstOrNull);

                                            await FuroBoletimRecord.collection
                                                .doc()
                                                .set(
                                                    createFuroBoletimRecordData(
                                                  furo:
                                                      _model.furoFB?.reference,
                                                  boletim: _model
                                                      .newBoletimFB?.reference,
                                                  ativo: _model.syncFuroBoletim
                                                      .elementAtOrNull(_model
                                                          .incFuroBoletim!)
                                                      ?.ativo,
                                                  createdAt: _model
                                                      .syncFuroBoletim
                                                      .elementAtOrNull(_model
                                                          .incFuroBoletim!)
                                                      ?.createdAt,
                                                  updatedAt: _model
                                                      .syncFuroBoletim
                                                      .elementAtOrNull(_model
                                                          .incFuroBoletim!)
                                                      ?.updatedAt,
                                                  localID: _model
                                                      .syncFuroBoletim
                                                      .elementAtOrNull(_model
                                                          .incFuroBoletim!)
                                                      ?.localID,
                                                  localFuroID: _model
                                                      .syncFuroBoletim
                                                      .elementAtOrNull(_model
                                                          .incFuroBoletim!)
                                                      ?.localFuroID,
                                                  localBoletimID: _model
                                                      .syncFuroBoletim
                                                      .elementAtOrNull(_model
                                                          .incFuroBoletim!)
                                                      ?.localBoletimID,
                                                  sync: true,
                                                ));
                                            _model.incFuroBoletim =
                                                _model.incFuroBoletim! + 1;
                                            safeSetState(() {});
                                          }
                                        }

                                        FFAppState().removeFromBoletins(
                                            _model.syncBoletim.elementAtOrNull(
                                                FFAppState().contador)!);
                                        safeSetState(() {});
                                        _model.updateSyncBoletimAtIndex(
                                          FFAppState().contador,
                                          (e) => e..sync = true,
                                        );
                                        safeSetState(() {});
                                        FFAppState().addToBoletins(
                                            _model.syncBoletim.elementAtOrNull(
                                                FFAppState().contador)!);
                                        safeSetState(() {});
                                        FFAppState().contador =
                                            FFAppState().contador + 1;
                                        safeSetState(() {});
                                      }
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Sincronização'),
                                            content: Text(
                                                'Sincronização realizada com sucesso!'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );

                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.sync,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 30.0,
                                            ),
                                            Text(
                                              'Sincronizar',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ].divide(SizedBox(height: 6.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().lstSupervisorSelecionado = [];
                                    FFAppState().lstOperadorSelecionado = [];
                                    FFAppState().lstAuxiliarSelecionado = [];
                                    safeSetState(() {});

                                    context
                                        .pushNamed(NovoBoletimWidget.routeName);
                                  },
                                  child: Container(
                                    key: ValueKey('Container_rpog'),
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.edit,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 30.0,
                                          ),
                                          Text(
                                            'Novo Boletim',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 6.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 10.0)),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Builder(
                            builder: (context) {
                              final lstBoletim = FFAppState()
                                  .boletins
                                  .sortedList(
                                      keyOf: (e) => e.data!, desc: false)
                                  .toList();

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: lstBoletim.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 8.0),
                                itemBuilder: (context, lstBoletimIndex) {
                                  final lstBoletimItem =
                                      lstBoletim[lstBoletimIndex];
                                  return RowBoletimWidget(
                                    key: Key(
                                        'Key8dz_${lstBoletimIndex}_of_${lstBoletim.length}'),
                                    index: lstBoletimIndex,
                                    boletim: lstBoletimItem,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ].divide(SizedBox(height: 20.0)),
                    ),
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
