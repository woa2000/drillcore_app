// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BoletimStruct extends FFFirebaseStruct {
  BoletimStruct({
    DocumentReference? id,
    String? localID,
    DateTime? data,
    double? inclinacao,
    double? azimute,
    double? horimetroInicial,
    double? horimetroFinal,
    List<DocumentReference>? supervisores,
    List<DocumentReference>? operadores,
    List<DocumentReference>? auxiliares,
    List<DocumentReference>? fiscais,
    DocumentReference? clienteID,
    ClienteStruct? cliente,
    DocumentReference? projetoID,
    ProjetoStruct? projeto,
    DocumentReference? alvoID,
    AlvoStruct? alvo,
    DocumentReference? turnoID,
    TurnoStruct? turno,
    DocumentReference? sondaID,
    SondaStruct? sonda,
    bool? concluido,
    bool? sync,
    List<FuroBoletimStruct>? furos,
    bool? aprovado,
    String? aprovadoPor,
    DateTime? dataAprovacao,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? user,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _localID = localID,
        _data = data,
        _inclinacao = inclinacao,
        _azimute = azimute,
        _horimetroInicial = horimetroInicial,
        _horimetroFinal = horimetroFinal,
        _supervisores = supervisores,
        _operadores = operadores,
        _auxiliares = auxiliares,
        _fiscais = fiscais,
        _clienteID = clienteID,
        _cliente = cliente,
        _projetoID = projetoID,
        _projeto = projeto,
        _alvoID = alvoID,
        _alvo = alvo,
        _turnoID = turnoID,
        _turno = turno,
        _sondaID = sondaID,
        _sonda = sonda,
        _concluido = concluido,
        _sync = sync,
        _furos = furos,
        _aprovado = aprovado,
        _aprovadoPor = aprovadoPor,
        _dataAprovacao = dataAprovacao,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _user = user,
        super(firestoreUtilData);

  // "ID" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "localID" field.
  String? _localID;
  String get localID => _localID ?? '';
  set localID(String? val) => _localID = val;

  bool hasLocalID() => _localID != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;

  bool hasData() => _data != null;

  // "inclinacao" field.
  double? _inclinacao;
  double get inclinacao => _inclinacao ?? 0.0;
  set inclinacao(double? val) => _inclinacao = val;

  void incrementInclinacao(double amount) => inclinacao = inclinacao + amount;

  bool hasInclinacao() => _inclinacao != null;

  // "azimute" field.
  double? _azimute;
  double get azimute => _azimute ?? 0.0;
  set azimute(double? val) => _azimute = val;

  void incrementAzimute(double amount) => azimute = azimute + amount;

  bool hasAzimute() => _azimute != null;

  // "horimetroInicial" field.
  double? _horimetroInicial;
  double get horimetroInicial => _horimetroInicial ?? 0.0;
  set horimetroInicial(double? val) => _horimetroInicial = val;

  void incrementHorimetroInicial(double amount) =>
      horimetroInicial = horimetroInicial + amount;

  bool hasHorimetroInicial() => _horimetroInicial != null;

  // "horimetroFinal" field.
  double? _horimetroFinal;
  double get horimetroFinal => _horimetroFinal ?? 0.0;
  set horimetroFinal(double? val) => _horimetroFinal = val;

  void incrementHorimetroFinal(double amount) =>
      horimetroFinal = horimetroFinal + amount;

  bool hasHorimetroFinal() => _horimetroFinal != null;

  // "supervisores" field.
  List<DocumentReference>? _supervisores;
  List<DocumentReference> get supervisores => _supervisores ?? const [];
  set supervisores(List<DocumentReference>? val) => _supervisores = val;

  void updateSupervisores(Function(List<DocumentReference>) updateFn) {
    updateFn(_supervisores ??= []);
  }

  bool hasSupervisores() => _supervisores != null;

  // "operadores" field.
  List<DocumentReference>? _operadores;
  List<DocumentReference> get operadores => _operadores ?? const [];
  set operadores(List<DocumentReference>? val) => _operadores = val;

  void updateOperadores(Function(List<DocumentReference>) updateFn) {
    updateFn(_operadores ??= []);
  }

  bool hasOperadores() => _operadores != null;

  // "auxiliares" field.
  List<DocumentReference>? _auxiliares;
  List<DocumentReference> get auxiliares => _auxiliares ?? const [];
  set auxiliares(List<DocumentReference>? val) => _auxiliares = val;

  void updateAuxiliares(Function(List<DocumentReference>) updateFn) {
    updateFn(_auxiliares ??= []);
  }

  bool hasAuxiliares() => _auxiliares != null;

  // "fiscais" field.
  List<DocumentReference>? _fiscais;
  List<DocumentReference> get fiscais => _fiscais ?? const [];
  set fiscais(List<DocumentReference>? val) => _fiscais = val;

  void updateFiscais(Function(List<DocumentReference>) updateFn) {
    updateFn(_fiscais ??= []);
  }

  bool hasFiscais() => _fiscais != null;

  // "clienteID" field.
  DocumentReference? _clienteID;
  DocumentReference? get clienteID => _clienteID;
  set clienteID(DocumentReference? val) => _clienteID = val;

  bool hasClienteID() => _clienteID != null;

  // "cliente" field.
  ClienteStruct? _cliente;
  ClienteStruct get cliente => _cliente ?? ClienteStruct();
  set cliente(ClienteStruct? val) => _cliente = val;

  void updateCliente(Function(ClienteStruct) updateFn) {
    updateFn(_cliente ??= ClienteStruct());
  }

  bool hasCliente() => _cliente != null;

  // "projetoID" field.
  DocumentReference? _projetoID;
  DocumentReference? get projetoID => _projetoID;
  set projetoID(DocumentReference? val) => _projetoID = val;

  bool hasProjetoID() => _projetoID != null;

  // "projeto" field.
  ProjetoStruct? _projeto;
  ProjetoStruct get projeto => _projeto ?? ProjetoStruct();
  set projeto(ProjetoStruct? val) => _projeto = val;

  void updateProjeto(Function(ProjetoStruct) updateFn) {
    updateFn(_projeto ??= ProjetoStruct());
  }

  bool hasProjeto() => _projeto != null;

  // "alvoID" field.
  DocumentReference? _alvoID;
  DocumentReference? get alvoID => _alvoID;
  set alvoID(DocumentReference? val) => _alvoID = val;

  bool hasAlvoID() => _alvoID != null;

  // "alvo" field.
  AlvoStruct? _alvo;
  AlvoStruct get alvo => _alvo ?? AlvoStruct();
  set alvo(AlvoStruct? val) => _alvo = val;

  void updateAlvo(Function(AlvoStruct) updateFn) {
    updateFn(_alvo ??= AlvoStruct());
  }

  bool hasAlvo() => _alvo != null;

  // "turnoID" field.
  DocumentReference? _turnoID;
  DocumentReference? get turnoID => _turnoID;
  set turnoID(DocumentReference? val) => _turnoID = val;

  bool hasTurnoID() => _turnoID != null;

  // "turno" field.
  TurnoStruct? _turno;
  TurnoStruct get turno => _turno ?? TurnoStruct();
  set turno(TurnoStruct? val) => _turno = val;

  void updateTurno(Function(TurnoStruct) updateFn) {
    updateFn(_turno ??= TurnoStruct());
  }

  bool hasTurno() => _turno != null;

  // "sondaID" field.
  DocumentReference? _sondaID;
  DocumentReference? get sondaID => _sondaID;
  set sondaID(DocumentReference? val) => _sondaID = val;

  bool hasSondaID() => _sondaID != null;

  // "sonda" field.
  SondaStruct? _sonda;
  SondaStruct get sonda => _sonda ?? SondaStruct();
  set sonda(SondaStruct? val) => _sonda = val;

  void updateSonda(Function(SondaStruct) updateFn) {
    updateFn(_sonda ??= SondaStruct());
  }

  bool hasSonda() => _sonda != null;

  // "concluido" field.
  bool? _concluido;
  bool get concluido => _concluido ?? false;
  set concluido(bool? val) => _concluido = val;

  bool hasConcluido() => _concluido != null;

  // "sync" field.
  bool? _sync;
  bool get sync => _sync ?? false;
  set sync(bool? val) => _sync = val;

  bool hasSync() => _sync != null;

  // "furos" field.
  List<FuroBoletimStruct>? _furos;
  List<FuroBoletimStruct> get furos => _furos ?? const [];
  set furos(List<FuroBoletimStruct>? val) => _furos = val;

  void updateFuros(Function(List<FuroBoletimStruct>) updateFn) {
    updateFn(_furos ??= []);
  }

  bool hasFuros() => _furos != null;

  // "aprovado" field.
  bool? _aprovado;
  bool get aprovado => _aprovado ?? false;
  set aprovado(bool? val) => _aprovado = val;

  bool hasAprovado() => _aprovado != null;

  // "aprovadoPor" field.
  String? _aprovadoPor;
  String get aprovadoPor => _aprovadoPor ?? '';
  set aprovadoPor(String? val) => _aprovadoPor = val;

  bool hasAprovadoPor() => _aprovadoPor != null;

  // "dataAprovacao" field.
  DateTime? _dataAprovacao;
  DateTime? get dataAprovacao => _dataAprovacao;
  set dataAprovacao(DateTime? val) => _dataAprovacao = val;

  bool hasDataAprovacao() => _dataAprovacao != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  set updatedAt(DateTime? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  set user(String? val) => _user = val;

  bool hasUser() => _user != null;

  static BoletimStruct fromMap(Map<String, dynamic> data) => BoletimStruct(
        id: data['ID'] as DocumentReference?,
        localID: data['localID'] as String?,
        data: data['data'] as DateTime?,
        inclinacao: castToType<double>(data['inclinacao']),
        azimute: castToType<double>(data['azimute']),
        horimetroInicial: castToType<double>(data['horimetroInicial']),
        horimetroFinal: castToType<double>(data['horimetroFinal']),
        supervisores: getDataList(data['supervisores']),
        operadores: getDataList(data['operadores']),
        auxiliares: getDataList(data['auxiliares']),
        fiscais: getDataList(data['fiscais']),
        clienteID: data['clienteID'] as DocumentReference?,
        cliente: data['cliente'] is ClienteStruct
            ? data['cliente']
            : ClienteStruct.maybeFromMap(data['cliente']),
        projetoID: data['projetoID'] as DocumentReference?,
        projeto: data['projeto'] is ProjetoStruct
            ? data['projeto']
            : ProjetoStruct.maybeFromMap(data['projeto']),
        alvoID: data['alvoID'] as DocumentReference?,
        alvo: data['alvo'] is AlvoStruct
            ? data['alvo']
            : AlvoStruct.maybeFromMap(data['alvo']),
        turnoID: data['turnoID'] as DocumentReference?,
        turno: data['turno'] is TurnoStruct
            ? data['turno']
            : TurnoStruct.maybeFromMap(data['turno']),
        sondaID: data['sondaID'] as DocumentReference?,
        sonda: data['sonda'] is SondaStruct
            ? data['sonda']
            : SondaStruct.maybeFromMap(data['sonda']),
        concluido: data['concluido'] as bool?,
        sync: data['sync'] as bool?,
        furos: getStructList(
          data['furos'],
          FuroBoletimStruct.fromMap,
        ),
        aprovado: data['aprovado'] as bool?,
        aprovadoPor: data['aprovadoPor'] as String?,
        dataAprovacao: data['dataAprovacao'] as DateTime?,
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
        user: data['user'] as String?,
      );

  static BoletimStruct? maybeFromMap(dynamic data) =>
      data is Map ? BoletimStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'localID': _localID,
        'data': _data,
        'inclinacao': _inclinacao,
        'azimute': _azimute,
        'horimetroInicial': _horimetroInicial,
        'horimetroFinal': _horimetroFinal,
        'supervisores': _supervisores,
        'operadores': _operadores,
        'auxiliares': _auxiliares,
        'fiscais': _fiscais,
        'clienteID': _clienteID,
        'cliente': _cliente?.toMap(),
        'projetoID': _projetoID,
        'projeto': _projeto?.toMap(),
        'alvoID': _alvoID,
        'alvo': _alvo?.toMap(),
        'turnoID': _turnoID,
        'turno': _turno?.toMap(),
        'sondaID': _sondaID,
        'sonda': _sonda?.toMap(),
        'concluido': _concluido,
        'sync': _sync,
        'furos': _furos?.map((e) => e.toMap()).toList(),
        'aprovado': _aprovado,
        'aprovadoPor': _aprovadoPor,
        'dataAprovacao': _dataAprovacao,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'user': _user,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.DocumentReference,
        ),
        'localID': serializeParam(
          _localID,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
        'inclinacao': serializeParam(
          _inclinacao,
          ParamType.double,
        ),
        'azimute': serializeParam(
          _azimute,
          ParamType.double,
        ),
        'horimetroInicial': serializeParam(
          _horimetroInicial,
          ParamType.double,
        ),
        'horimetroFinal': serializeParam(
          _horimetroFinal,
          ParamType.double,
        ),
        'supervisores': serializeParam(
          _supervisores,
          ParamType.DocumentReference,
          isList: true,
        ),
        'operadores': serializeParam(
          _operadores,
          ParamType.DocumentReference,
          isList: true,
        ),
        'auxiliares': serializeParam(
          _auxiliares,
          ParamType.DocumentReference,
          isList: true,
        ),
        'fiscais': serializeParam(
          _fiscais,
          ParamType.DocumentReference,
          isList: true,
        ),
        'clienteID': serializeParam(
          _clienteID,
          ParamType.DocumentReference,
        ),
        'cliente': serializeParam(
          _cliente,
          ParamType.DataStruct,
        ),
        'projetoID': serializeParam(
          _projetoID,
          ParamType.DocumentReference,
        ),
        'projeto': serializeParam(
          _projeto,
          ParamType.DataStruct,
        ),
        'alvoID': serializeParam(
          _alvoID,
          ParamType.DocumentReference,
        ),
        'alvo': serializeParam(
          _alvo,
          ParamType.DataStruct,
        ),
        'turnoID': serializeParam(
          _turnoID,
          ParamType.DocumentReference,
        ),
        'turno': serializeParam(
          _turno,
          ParamType.DataStruct,
        ),
        'sondaID': serializeParam(
          _sondaID,
          ParamType.DocumentReference,
        ),
        'sonda': serializeParam(
          _sonda,
          ParamType.DataStruct,
        ),
        'concluido': serializeParam(
          _concluido,
          ParamType.bool,
        ),
        'sync': serializeParam(
          _sync,
          ParamType.bool,
        ),
        'furos': serializeParam(
          _furos,
          ParamType.DataStruct,
          isList: true,
        ),
        'aprovado': serializeParam(
          _aprovado,
          ParamType.bool,
        ),
        'aprovadoPor': serializeParam(
          _aprovadoPor,
          ParamType.String,
        ),
        'dataAprovacao': serializeParam(
          _dataAprovacao,
          ParamType.DateTime,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.DateTime,
        ),
        'user': serializeParam(
          _user,
          ParamType.String,
        ),
      }.withoutNulls;

  static BoletimStruct fromSerializableMap(Map<String, dynamic> data) =>
      BoletimStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['boletim'],
        ),
        localID: deserializeParam(
          data['localID'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
        inclinacao: deserializeParam(
          data['inclinacao'],
          ParamType.double,
          false,
        ),
        azimute: deserializeParam(
          data['azimute'],
          ParamType.double,
          false,
        ),
        horimetroInicial: deserializeParam(
          data['horimetroInicial'],
          ParamType.double,
          false,
        ),
        horimetroFinal: deserializeParam(
          data['horimetroFinal'],
          ParamType.double,
          false,
        ),
        supervisores: deserializeParam<DocumentReference>(
          data['supervisores'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['equipe'],
        ),
        operadores: deserializeParam<DocumentReference>(
          data['operadores'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['equipe'],
        ),
        auxiliares: deserializeParam<DocumentReference>(
          data['auxiliares'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['equipe'],
        ),
        fiscais: deserializeParam<DocumentReference>(
          data['fiscais'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['equipe'],
        ),
        clienteID: deserializeParam(
          data['clienteID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['cliente'],
        ),
        cliente: deserializeStructParam(
          data['cliente'],
          ParamType.DataStruct,
          false,
          structBuilder: ClienteStruct.fromSerializableMap,
        ),
        projetoID: deserializeParam(
          data['projetoID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['projeto'],
        ),
        projeto: deserializeStructParam(
          data['projeto'],
          ParamType.DataStruct,
          false,
          structBuilder: ProjetoStruct.fromSerializableMap,
        ),
        alvoID: deserializeParam(
          data['alvoID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['alvo'],
        ),
        alvo: deserializeStructParam(
          data['alvo'],
          ParamType.DataStruct,
          false,
          structBuilder: AlvoStruct.fromSerializableMap,
        ),
        turnoID: deserializeParam(
          data['turnoID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['turno'],
        ),
        turno: deserializeStructParam(
          data['turno'],
          ParamType.DataStruct,
          false,
          structBuilder: TurnoStruct.fromSerializableMap,
        ),
        sondaID: deserializeParam(
          data['sondaID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['sonda'],
        ),
        sonda: deserializeStructParam(
          data['sonda'],
          ParamType.DataStruct,
          false,
          structBuilder: SondaStruct.fromSerializableMap,
        ),
        concluido: deserializeParam(
          data['concluido'],
          ParamType.bool,
          false,
        ),
        sync: deserializeParam(
          data['sync'],
          ParamType.bool,
          false,
        ),
        furos: deserializeStructParam<FuroBoletimStruct>(
          data['furos'],
          ParamType.DataStruct,
          true,
          structBuilder: FuroBoletimStruct.fromSerializableMap,
        ),
        aprovado: deserializeParam(
          data['aprovado'],
          ParamType.bool,
          false,
        ),
        aprovadoPor: deserializeParam(
          data['aprovadoPor'],
          ParamType.String,
          false,
        ),
        dataAprovacao: deserializeParam(
          data['dataAprovacao'],
          ParamType.DateTime,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.DateTime,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.DateTime,
          false,
        ),
        user: deserializeParam(
          data['user'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BoletimStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BoletimStruct &&
        id == other.id &&
        localID == other.localID &&
        data == other.data &&
        inclinacao == other.inclinacao &&
        azimute == other.azimute &&
        horimetroInicial == other.horimetroInicial &&
        horimetroFinal == other.horimetroFinal &&
        listEquality.equals(supervisores, other.supervisores) &&
        listEquality.equals(operadores, other.operadores) &&
        listEquality.equals(auxiliares, other.auxiliares) &&
        listEquality.equals(fiscais, other.fiscais) &&
        clienteID == other.clienteID &&
        cliente == other.cliente &&
        projetoID == other.projetoID &&
        projeto == other.projeto &&
        alvoID == other.alvoID &&
        alvo == other.alvo &&
        turnoID == other.turnoID &&
        turno == other.turno &&
        sondaID == other.sondaID &&
        sonda == other.sonda &&
        concluido == other.concluido &&
        sync == other.sync &&
        listEquality.equals(furos, other.furos) &&
        aprovado == other.aprovado &&
        aprovadoPor == other.aprovadoPor &&
        dataAprovacao == other.dataAprovacao &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        localID,
        data,
        inclinacao,
        azimute,
        horimetroInicial,
        horimetroFinal,
        supervisores,
        operadores,
        auxiliares,
        fiscais,
        clienteID,
        cliente,
        projetoID,
        projeto,
        alvoID,
        alvo,
        turnoID,
        turno,
        sondaID,
        sonda,
        concluido,
        sync,
        furos,
        aprovado,
        aprovadoPor,
        dataAprovacao,
        createdAt,
        updatedAt,
        user
      ]);
}

BoletimStruct createBoletimStruct({
  DocumentReference? id,
  String? localID,
  DateTime? data,
  double? inclinacao,
  double? azimute,
  double? horimetroInicial,
  double? horimetroFinal,
  DocumentReference? clienteID,
  ClienteStruct? cliente,
  DocumentReference? projetoID,
  ProjetoStruct? projeto,
  DocumentReference? alvoID,
  AlvoStruct? alvo,
  DocumentReference? turnoID,
  TurnoStruct? turno,
  DocumentReference? sondaID,
  SondaStruct? sonda,
  bool? concluido,
  bool? sync,
  bool? aprovado,
  String? aprovadoPor,
  DateTime? dataAprovacao,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? user,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BoletimStruct(
      id: id,
      localID: localID,
      data: data,
      inclinacao: inclinacao,
      azimute: azimute,
      horimetroInicial: horimetroInicial,
      horimetroFinal: horimetroFinal,
      clienteID: clienteID,
      cliente: cliente ?? (clearUnsetFields ? ClienteStruct() : null),
      projetoID: projetoID,
      projeto: projeto ?? (clearUnsetFields ? ProjetoStruct() : null),
      alvoID: alvoID,
      alvo: alvo ?? (clearUnsetFields ? AlvoStruct() : null),
      turnoID: turnoID,
      turno: turno ?? (clearUnsetFields ? TurnoStruct() : null),
      sondaID: sondaID,
      sonda: sonda ?? (clearUnsetFields ? SondaStruct() : null),
      concluido: concluido,
      sync: sync,
      aprovado: aprovado,
      aprovadoPor: aprovadoPor,
      dataAprovacao: dataAprovacao,
      createdAt: createdAt,
      updatedAt: updatedAt,
      user: user,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BoletimStruct? updateBoletimStruct(
  BoletimStruct? boletim, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    boletim
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBoletimStructData(
  Map<String, dynamic> firestoreData,
  BoletimStruct? boletim,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (boletim == null) {
    return;
  }
  if (boletim.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && boletim.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final boletimData = getBoletimFirestoreData(boletim, forFieldValue);
  final nestedData = boletimData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = boletim.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBoletimFirestoreData(
  BoletimStruct? boletim, [
  bool forFieldValue = false,
]) {
  if (boletim == null) {
    return {};
  }
  final firestoreData = mapToFirestore(boletim.toMap());

  // Handle nested data for "cliente" field.
  addClienteStructData(
    firestoreData,
    boletim.hasCliente() ? boletim.cliente : null,
    'cliente',
    forFieldValue,
  );

  // Handle nested data for "projeto" field.
  addProjetoStructData(
    firestoreData,
    boletim.hasProjeto() ? boletim.projeto : null,
    'projeto',
    forFieldValue,
  );

  // Handle nested data for "alvo" field.
  addAlvoStructData(
    firestoreData,
    boletim.hasAlvo() ? boletim.alvo : null,
    'alvo',
    forFieldValue,
  );

  // Handle nested data for "turno" field.
  addTurnoStructData(
    firestoreData,
    boletim.hasTurno() ? boletim.turno : null,
    'turno',
    forFieldValue,
  );

  // Handle nested data for "sonda" field.
  addSondaStructData(
    firestoreData,
    boletim.hasSonda() ? boletim.sonda : null,
    'sonda',
    forFieldValue,
  );

  // Add any Firestore field values
  boletim.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBoletimListFirestoreData(
  List<BoletimStruct>? boletims,
) =>
    boletims?.map((e) => getBoletimFirestoreData(e, true)).toList() ?? [];
