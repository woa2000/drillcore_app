import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.dataNula = await actions.dataNula();
      _model.comInternet = await actions.checkInternetConnection();
      if (_model.comInternet!) {
        _model.clientesFB = await queryClientesRecordOnce();
        // Atualiza as informações do cliente no App
        FFAppState().clientes = functions
            .setCliente(_model.clientesFB!.toList())!
            .toList()
            .cast<ClienteStruct>();
        safeSetState(() {});
        // Action Projetos
        _model.projetosFB = await queryProjetoRecordOnce(
          queryBuilder: (projetoRecord) => projetoRecord.orderBy('updatedAt'),
        );
        // Atualiza as informações dos projetos no App.
        FFAppState().projetos = functions
            .setProjeto(_model.projetosFB?.toList())!
            .toList()
            .cast<ProjetoStruct>();
        safeSetState(() {});
        // Action Alvos
        _model.alvosFB = await queryAlvoRecordOnce(
          queryBuilder: (alvoRecord) => alvoRecord.orderBy('updatedAt'),
        );
        // Atualiza as informações dos alvos no App.
        FFAppState().alvos = functions
            .setAlvo(_model.alvosFB?.toList())!
            .toList()
            .cast<AlvoStruct>();
        safeSetState(() {});
        // Action Sonda
        _model.sondaFB = await querySondaRecordOnce(
          queryBuilder: (sondaRecord) => sondaRecord.orderBy('updatedAt'),
        );
        // Atualiza as informações das Sondas no App.
        FFAppState().sondas = functions
            .setSonda(_model.sondaFB?.toList())!
            .toList()
            .cast<SondaStruct>();
        safeSetState(() {});
        // Action Furos
        _model.lstFuro = await queryFuroRecordOnce(
          queryBuilder: (furoRecord) => furoRecord.orderBy('updatedAt'),
        );
        FFAppState().contador = 0;
        safeSetState(() {});
        while (FFAppState().contador < FFAppState().furos.length) {
          if (FFAppState().furos.elementAtOrNull(FFAppState().contador)?.sync ==
              false) {
            FFAppState().contador = FFAppState().contador + 1;
            safeSetState(() {});
          } else {
            FFAppState().removeAtIndexFromFuros(FFAppState().contador);
            safeSetState(() {});
          }
        }
        FFAppState().contador = 0;
        safeSetState(() {});
        while (FFAppState().contador < _model.lstFuro!.length) {
          FFAppState().addToFuros(FuroStruct(
            nomeFuro: _model.lstFuro
                ?.elementAtOrNull(FFAppState().contador)
                ?.nomeFuro,
            status:
                _model.lstFuro?.elementAtOrNull(FFAppState().contador)?.status,
            furoOrientado: _model.lstFuro
                ?.elementAtOrNull(FFAppState().contador)
                ?.furoOrientado,
            sync: true,
            id: _model.lstFuro
                ?.elementAtOrNull(FFAppState().contador)
                ?.reference,
            alvoID:
                _model.lstFuro?.elementAtOrNull(FFAppState().contador)?.alvoID,
            profundidade: _model.lstFuro
                ?.elementAtOrNull(FFAppState().contador)
                ?.profundidade,
            localID:
                _model.lstFuro?.elementAtOrNull(FFAppState().contador)?.localID,
            createdAt: _model.lstFuro
                ?.elementAtOrNull(FFAppState().contador)
                ?.createdAt,
            updatedAt: _model.lstFuro
                ?.elementAtOrNull(FFAppState().contador)
                ?.updatedAt,
          ));
          safeSetState(() {});
          FFAppState().contador = FFAppState().contador + 1;
          safeSetState(() {});
        }
        // Action Turnos
        _model.lstTurnoFB = await queryTurnoRecordOnce(
          queryBuilder: (turnoRecord) => turnoRecord.orderBy('updatedAt'),
        );
        // compareDataAtualizacao
        _model.dataLocal = FFAppState().turnos.length > 0
            ? FFAppState()
                .turnos
                .sortedList(keyOf: (e) => e.updatedAt!, desc: false)
                .lastOrNull
                ?.updatedAt
            : _model.dataNula;
        _model.dataNuvem = _model.lstTurnoFB?.lastOrNull?.updatedAt;
        safeSetState(() {});
        if ((FFAppState().turnos.length == 0) ||
            (_model.dataLocal! < _model.dataNuvem!)) {
          FFAppState().contador = 0;
          FFAppState().turnos = [];
          safeSetState(() {});
          while (FFAppState().contador < _model.lstTurnoFB!.length) {
            FFAppState().addToTurnos(TurnoStruct(
              id: _model.lstTurnoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.reference,
              nomeTurno: _model.lstTurnoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.nomeTurno,
              codigo: _model.lstTurnoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.codigo,
              inicio: _model.lstTurnoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.inicio,
              termino: _model.lstTurnoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.termino,
              projetoID: _model.lstTurnoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.projetoID,
              createdAt: _model.lstTurnoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.createdAt,
              updatedAt: _model.lstTurnoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.updatedAt,
            ));
            safeSetState(() {});
            FFAppState().contador = FFAppState().contador + 1;
            safeSetState(() {});
          }
        }
        // Action Equipe
        _model.lstEquipe = await queryEquipeRecordOnce(
          queryBuilder: (equipeRecord) => equipeRecord.orderBy('updatedAt'),
        );
        // compareDataAtualizacao
        _model.dataLocal = FFAppState().equipes.length > 0
            ? FFAppState()
                .equipes
                .sortedList(keyOf: (e) => e.updatedAt!, desc: false)
                .lastOrNull
                ?.updatedAt
            : _model.dataNula;
        _model.dataNuvem = _model.lstEquipe?.lastOrNull?.updatedAt;
        safeSetState(() {});
        if ((FFAppState().equipes.length == 0) ||
            (_model.dataLocal! < _model.dataNuvem!)) {
          FFAppState().contador = 0;
          FFAppState().equipes = [];
          safeSetState(() {});
          while (FFAppState().contador < _model.lstEquipe!.length) {
            FFAppState().addToEquipes(EquipeStruct(
              id: _model.lstEquipe
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.reference,
              nome: _model.lstEquipe
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.nome,
              funcao: _model.lstEquipe
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.funcao,
              ativo: _model.lstEquipe
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.ativo,
              createdAt: _model.lstEquipe
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.createdAt,
              updatedAt: _model.lstEquipe
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.updatedAt,
            ));
            safeSetState(() {});
            FFAppState().contador = FFAppState().contador + 1;
            safeSetState(() {});
          }
        }
        // Action Equipe Projeto
        _model.lstEquipeProjeto = await queryEquipeProjetoRecordOnce(
          queryBuilder: (equipeProjetoRecord) =>
              equipeProjetoRecord.orderBy('updatedAt'),
        );
        FFAppState().equipeProjeto = functions
            .setEquipeProjeto(
                _model.lstEquipeProjeto?.toList(), _model.lstEquipe?.toList())!
            .toList()
            .cast<EquipeProjetoStruct>();
        safeSetState(() {});
        // Action Atividades
        _model.lstAtividade = await queryAtividadeRecordOnce(
          queryBuilder: (atividadeRecord) =>
              atividadeRecord.orderBy('updatedAt'),
        );
        // compareDataAtualizacao
        _model.dataLocal = FFAppState().atividades.length > 0
            ? FFAppState()
                .atividades
                .sortedList(keyOf: (e) => e.updatedAt!, desc: false)
                .lastOrNull
                ?.updatedAt
            : _model.dataNula;
        _model.dataNuvem = _model.lstAtividade?.lastOrNull?.updatedAt;
        safeSetState(() {});
        if ((FFAppState().atividades.length == 0) ||
            (_model.dataLocal! < _model.dataNuvem!)) {
          FFAppState().contador = 0;
          FFAppState().atividades = [];
          safeSetState(() {});
          while (FFAppState().contador < _model.lstAtividade!.length) {
            FFAppState().addToAtividades(AtividadeStruct(
              id: _model.lstAtividade
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.reference,
              nomeAtividade: _model.lstAtividade
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.nomeAtividade,
              codigo: _model.lstAtividade
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.codigo
                  .toString(),
              tipo: _model.lstAtividade
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.tipo,
              infoPerfuracao: _model.lstAtividade
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.infoPerfuracao,
              ativo: _model.lstAtividade
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.ativo,
              displayName:
                  '${_model.lstAtividade?.elementAtOrNull(FFAppState().contador)?.codigo.toString()} - ${_model.lstAtividade?.elementAtOrNull(FFAppState().contador)?.nomeAtividade}',
              createdAt: _model.lstAtividade
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.createdAt,
              updatedAt: _model.lstAtividade
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.updatedAt,
            ));
            safeSetState(() {});
            FFAppState().contador = FFAppState().contador + 1;
            safeSetState(() {});
          }
        }
        // Action Diametro
        _model.lstDiametroFB = await queryDiametroRecordOnce(
          queryBuilder: (diametroRecord) => diametroRecord.orderBy('updatedAt'),
        );
        // compareDataAtualizacao
        _model.dataLocal = FFAppState().lstDiametro.length > 0
            ? FFAppState()
                .lstDiametro
                .sortedList(keyOf: (e) => e.updatedAt!, desc: false)
                .lastOrNull
                ?.updatedAt
            : _model.dataNula;
        _model.dataNuvem = _model.lstDiametroFB!.length > 0
            ? _model.lstDiametroFB?.lastOrNull?.updatedAt
            : _model.dataNula;
        safeSetState(() {});
        if ((FFAppState().lstDiametro.length == 0) ||
            (_model.dataLocal! < _model.dataNuvem!)) {
          FFAppState().contador = 0;
          FFAppState().lstDiametro = [];
          safeSetState(() {});
          while (FFAppState().contador < _model.lstDiametroFB!.length) {
            FFAppState().addToLstDiametro(DiametroStruct(
              id: _model.lstDiametroFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.reference,
              nomeDiametro: _model.lstDiametroFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.nomeDiametro,
              createdAt: _model.lstDiametroFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.createdAt,
              updatedAt: _model.lstDiametroFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.updatedAt,
            ));
            safeSetState(() {});
            FFAppState().contador = FFAppState().contador + 1;
            safeSetState(() {});
          }
        }
        // Action Consistência
        _model.lstConsistenciaFB = await queryConsistenciaRecordOnce(
          queryBuilder: (consistenciaRecord) =>
              consistenciaRecord.orderBy('updatedAt'),
        );
        // compareDataAtualizacao
        _model.dataLocal = FFAppState().lstConsistencia.length > 0
            ? FFAppState().lstConsistencia.lastOrNull?.updatedAt
            : _model.dataNula;
        _model.dataNuvem = _model.lstConsistenciaFB!.length > 0
            ? _model.lstConsistenciaFB?.lastOrNull?.updatedAt
            : _model.dataNula;
        safeSetState(() {});
        if ((FFAppState().lstDiametro.length == 0) ||
            (_model.dataLocal! < _model.dataNuvem!)) {
          FFAppState().contador = 0;
          FFAppState().lstConsistencia = [];
          safeSetState(() {});
          while (FFAppState().contador < _model.lstConsistenciaFB!.length) {
            FFAppState().addToLstConsistencia(ConsistenciaStruct(
              id: _model.lstConsistenciaFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.reference,
              tipoSolo: _model.lstConsistenciaFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.tipoSolo,
              createdAt: _model.lstConsistenciaFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.createdAt,
              updatedAt: _model.lstConsistenciaFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.updatedAt,
            ));
            safeSetState(() {});
            FFAppState().contador = FFAppState().contador + 1;
            safeSetState(() {});
          }
        }
        // Action Orientação
        _model.lstOrientacaoFB = await queryOrientacaoRecordOnce(
          queryBuilder: (orientacaoRecord) =>
              orientacaoRecord.orderBy('updatedAt'),
        );
        // compareDataAtualizacao
        _model.dataLocal = FFAppState().lstOrientacao.length > 0
            ? FFAppState().lstOrientacao.lastOrNull?.updatedAt
            : _model.dataNula;
        _model.dataNuvem = _model.lstOrientacaoFB!.length > 0
            ? _model.lstOrientacaoFB?.lastOrNull?.updatedAt
            : _model.dataNula;
        safeSetState(() {});
        if ((FFAppState().lstDiametro.length == 0) ||
            (_model.dataLocal! < _model.dataNuvem!)) {
          FFAppState().contador = 0;
          FFAppState().lstOrientacao = [];
          safeSetState(() {});
          while (FFAppState().contador < _model.lstOrientacaoFB!.length) {
            FFAppState().addToLstOrientacao(OrientacaoStruct(
              id: _model.lstOrientacaoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.reference,
              codigo: _model.lstOrientacaoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.codigo,
              sigla: _model.lstOrientacaoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.sigla,
              descricao: _model.lstOrientacaoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.descricao,
              ativo: _model.lstOrientacaoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.ativo,
              createdAt: _model.lstOrientacaoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.createdAt,
              updatedAt: _model.lstOrientacaoFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.updatedAt,
            ));
            safeSetState(() {});
            FFAppState().contador = FFAppState().contador + 1;
            safeSetState(() {});
          }
        }
        // Action Parametros
        _model.parametroFB = await queryParametrosRecordOnce(
          singleRecord: true,
        ).then((s) => s.firstOrNull);
        FFAppState().parametros = ParametrosStruct(
          senhaExclusaoBoletim: _model.parametroFB?.senhaExclusaoBoletim,
          senhaExclusaoAtividade: _model.parametroFB?.senhaExclusaoAtividade,
          senhaPermissaoLimpezaCache:
              _model.parametroFB?.senhaPermisaoLimpesaCache,
          createdAt: _model.parametroFB?.createdAt,
          updatedAt: _model.parametroFB?.updatedAt,
        );
        safeSetState(() {});
        FFAppState().contador = 0;
        safeSetState(() {});
        _model.lstBoletinsFB = await queryBoletimRecordOnce(
          queryBuilder: (boletimRecord) => boletimRecord.where(
            'sync',
            isEqualTo: false,
          ),
        );
        while (FFAppState().contador < _model.lstBoletinsFB!.length) {
          if (FFAppState()
                  .boletins
                  .where((e) =>
                      e.localID ==
                      _model.lstBoletinsFB
                          ?.elementAtOrNull(FFAppState().contador)
                          ?.localID)
                  .toList()
                  .length >
              0) {
            FFAppState().removeFromBoletins(FFAppState()
                .boletins
                .where((e) =>
                    e.localID ==
                    _model.lstBoletinsFB
                        ?.elementAtOrNull(FFAppState().contador)
                        ?.localID)
                .toList()
                .firstOrNull!);
            safeSetState(() {});
            // Limpar Atividades
            _model.inc = 0;
            safeSetState(() {});
            while (_model.inc! < FFAppState().atividadesBoletim.length) {
              if (FFAppState()
                      .atividadesBoletim
                      .elementAtOrNull(_model.inc!)
                      ?.localBoletimID ==
                  _model.lstBoletinsFB
                      ?.elementAtOrNull(FFAppState().contador)
                      ?.localID) {
                FFAppState().removeAtIndexFromAtividadesBoletim(_model.inc!);
                safeSetState(() {});
              } else {
                _model.inc = _model.inc! + 1;
                safeSetState(() {});
              }
            }
            // Limpar Atividades
            _model.inc = 0;
            safeSetState(() {});
            while (_model.inc! < FFAppState().furosBoletim.length) {
              if (FFAppState()
                      .furosBoletim
                      .elementAtOrNull(_model.inc!)
                      ?.localBoletimID ==
                  _model.lstBoletinsFB
                      ?.elementAtOrNull(FFAppState().contador)
                      ?.localID) {
                FFAppState().removeAtIndexFromFurosBoletim(_model.inc!);
                safeSetState(() {});
              } else {
                _model.inc = _model.inc! + 1;
                safeSetState(() {});
              }
            }
            // Lista Supervisores
            _model.incEquipe = 0;
            _model.lstSupervisorFB = [];
            safeSetState(() {});
            while (_model.incEquipe! <
                _model.lstBoletinsFB!
                    .elementAtOrNull(FFAppState().contador)!
                    .supervisores
                    .length) {
              _model.addToLstSupervisorFB(_model.lstBoletinsFB!
                  .elementAtOrNull(FFAppState().contador)!
                  .supervisores
                  .elementAtOrNull(_model.incEquipe!)!);
              safeSetState(() {});
              _model.incEquipe = _model.incEquipe! + 1;
              safeSetState(() {});
            }
            // Lista Auxiliares
            _model.incEquipe = 0;
            _model.lstAuxiliarFB = [];
            safeSetState(() {});
            while (_model.incEquipe! <
                _model.lstBoletinsFB!
                    .elementAtOrNull(FFAppState().contador)!
                    .auxiliares
                    .length) {
              _model.addToLstAuxiliarFB(_model.lstBoletinsFB!
                  .elementAtOrNull(FFAppState().contador)!
                  .auxiliares
                  .elementAtOrNull(_model.incEquipe!)!);
              safeSetState(() {});
              _model.incEquipe = _model.incEquipe! + 1;
              safeSetState(() {});
            }
            // Lista Operadores
            _model.incEquipe = 0;
            _model.lstOperadorFB = [];
            safeSetState(() {});
            while (_model.incEquipe! <
                _model.lstBoletinsFB!
                    .elementAtOrNull(FFAppState().contador)!
                    .operadores
                    .length) {
              _model.addToLstOperadorFB(_model.lstBoletinsFB!
                  .elementAtOrNull(FFAppState().contador)!
                  .operadores
                  .elementAtOrNull(_model.incEquipe!)!);
              safeSetState(() {});
              _model.incEquipe = _model.incEquipe! + 1;
              safeSetState(() {});
            }
            // Add Boletim
            FFAppState().addToBoletins(BoletimStruct(
              localID: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.localID,
              id: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.reference,
              data: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.data,
              inclinacao: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.inclinacao,
              azimute: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.azimute,
              horimetroInicial: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.horimetroInicial,
              horimetroFinal: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.horimetroFinal,
              clienteID: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.clienteID,
              projetoID: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.projetoID,
              alvoID: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.alvoID,
              turnoID: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.turnoID,
              sondaID: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.sondaID,
              concluido: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.concluido,
              sync: true,
              createdAt: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.createdAt,
              updatedAt: _model.lstBoletinsFB
                  ?.elementAtOrNull(FFAppState().contador)
                  ?.updatedAt,
              supervisores: _model.lstSupervisorFB,
              operadores: _model.lstOperadorFB,
              auxiliares: _model.lstAuxiliarFB,
            ));
            safeSetState(() {});
            _model.lstAtividadeBoletimFB =
                await queryAtividadeBoletimRecordOnce(
              queryBuilder: (atividadeBoletimRecord) =>
                  atividadeBoletimRecord.where(
                'localBoletimID',
                isEqualTo: _model.lstBoletinsFB
                    ?.elementAtOrNull(FFAppState().contador)
                    ?.localID,
              ),
            );
            _model.inc = 0;
            safeSetState(() {});
            while (_model.inc! < _model.lstAtividadeBoletimFB!.length) {
              FFAppState().addToAtividadesBoletim(AtividadeBoletimStruct(
                localID: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.localID,
                localBoletimID: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.localBoletimID,
                localFuroID: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.localFuroID,
                id: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.reference,
                inicio: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.inicio,
                termino: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.termino,
                de: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.de,
                avanco: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.avanco,
                recuperacao: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.recuperacao,
                caixa: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.caixa,
                observacao: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.observacao,
                boletimID: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.boletimID,
                atividadeID: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.atividadeID,
                furoID: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.furoID,
                diamentro: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.diametro,
                litologia: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.litologia,
                dip: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.dip,
                sync: true,
                ordem: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.ordem,
                createdAt: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.createdAt,
                updatedAt: _model.lstAtividadeBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.updatedAt,
              ));
              safeSetState(() {});
              _model.inc = _model.inc! + 1;
              safeSetState(() {});
            }
            // Add Furo Boletim
            _model.lstFuroBoletimFB = await queryFuroBoletimRecordOnce(
              queryBuilder: (furoBoletimRecord) => furoBoletimRecord.where(
                'localBoletimID',
                isEqualTo: _model.lstBoletinsFB
                    ?.elementAtOrNull(FFAppState().contador)
                    ?.localID,
              ),
            );
            _model.inc = 0;
            safeSetState(() {});
            while (_model.inc! < _model.lstFuroBoletimFB!.length) {
              FFAppState().addToFurosBoletim(FuroBoletimStruct(
                localID: _model.lstFuroBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.localID,
                localFuroID: _model.lstFuroBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.localFuroID,
                localBoletimID: _model.lstFuroBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.localBoletimID,
                id: _model.lstFuroBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.reference,
                furoID:
                    _model.lstFuroBoletimFB?.elementAtOrNull(_model.inc!)?.furo,
                boletimID: _model.lstFuroBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.boletim,
                ativo: _model.lstFuroBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.ativo,
                sync: true,
                createdAt: _model.lstFuroBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.createdAt,
                updatedAt: _model.lstFuroBoletimFB
                    ?.elementAtOrNull(_model.inc!)
                    ?.updatedAt,
              ));
              safeSetState(() {});
              _model.inc = _model.inc! + 1;
              safeSetState(() {});
            }

            await _model.lstBoletinsFB!
                .elementAtOrNull(FFAppState().contador)!
                .reference
                .update(createBoletimRecordData(
                  sync: true,
                ));
          }
          FFAppState().contador = FFAppState().contador + 1;
          safeSetState(() {});
        }
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
          title: Text(
            'Drill Core',
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
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/DrillGeo-Novo-Logo-2020.png',
                      width: 600.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                FFButtonWidget(
                  key: ValueKey('Button_wisr'),
                  onPressed: () async {
                    context.pushNamed(ListaBoletinsWidget.routeName);
                  },
                  text: 'Boletins',
                  icon: Icon(
                    Icons.library_books,
                    size: 26.0,
                  ),
                  options: FFButtonOptions(
                    width: 300.0,
                    height: 60.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.readexPro(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          fontSize: 26.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(ConfiguracaoWidget.routeName);
                  },
                  text: 'Configurações',
                  icon: Icon(
                    Icons.build_outlined,
                    size: 26.0,
                  ),
                  options: FFButtonOptions(
                    width: 300.0,
                    height: 60.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.readexPro(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          fontSize: 26.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    await authManager.signOut();
                    GoRouter.of(context).clearRedirectLocation();

                    context.goNamedAuth(LoginWidget.routeName, context.mounted);
                  },
                  text: 'Sair',
                  icon: Icon(
                    Icons.door_front_door_outlined,
                    size: 26.0,
                  ),
                  options: FFButtonOptions(
                    width: 300.0,
                    height: 60.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.readexPro(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          fontSize: 26.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ].divide(SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
