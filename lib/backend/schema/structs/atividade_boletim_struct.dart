// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AtividadeBoletimStruct extends FFFirebaseStruct {
  AtividadeBoletimStruct({
    DocumentReference? id,
    String? localID,
    String? localBoletimID,
    String? localFuroID,
    DateTime? inicio,
    DateTime? termino,
    double? de,
    double? avanco,
    double? recuperacao,
    String? caixa,
    String? observacao,
    DocumentReference? boletimID,
    BoletimStruct? boletim,
    DocumentReference? atividadeID,
    AtividadeStruct? atividade,
    DocumentReference? furoID,
    FuroStruct? furo,
    String? diamentro,
    String? litologia,
    String? dip,
    bool? sync,
    int? ordem,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _localID = localID,
        _localBoletimID = localBoletimID,
        _localFuroID = localFuroID,
        _inicio = inicio,
        _termino = termino,
        _de = de,
        _avanco = avanco,
        _recuperacao = recuperacao,
        _caixa = caixa,
        _observacao = observacao,
        _boletimID = boletimID,
        _boletim = boletim,
        _atividadeID = atividadeID,
        _atividade = atividade,
        _furoID = furoID,
        _furo = furo,
        _diamentro = diamentro,
        _litologia = litologia,
        _dip = dip,
        _sync = sync,
        _ordem = ordem,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
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

  // "localBoletimID" field.
  String? _localBoletimID;
  String get localBoletimID => _localBoletimID ?? '';
  set localBoletimID(String? val) => _localBoletimID = val;

  bool hasLocalBoletimID() => _localBoletimID != null;

  // "localFuroID" field.
  String? _localFuroID;
  String get localFuroID => _localFuroID ?? '';
  set localFuroID(String? val) => _localFuroID = val;

  bool hasLocalFuroID() => _localFuroID != null;

  // "inicio" field.
  DateTime? _inicio;
  DateTime? get inicio => _inicio;
  set inicio(DateTime? val) => _inicio = val;

  bool hasInicio() => _inicio != null;

  // "termino" field.
  DateTime? _termino;
  DateTime? get termino => _termino;
  set termino(DateTime? val) => _termino = val;

  bool hasTermino() => _termino != null;

  // "de" field.
  double? _de;
  double get de => _de ?? 0.0;
  set de(double? val) => _de = val;

  void incrementDe(double amount) => de = de + amount;

  bool hasDe() => _de != null;

  // "avanco" field.
  double? _avanco;
  double get avanco => _avanco ?? 0.0;
  set avanco(double? val) => _avanco = val;

  void incrementAvanco(double amount) => avanco = avanco + amount;

  bool hasAvanco() => _avanco != null;

  // "recuperacao" field.
  double? _recuperacao;
  double get recuperacao => _recuperacao ?? 0.0;
  set recuperacao(double? val) => _recuperacao = val;

  void incrementRecuperacao(double amount) =>
      recuperacao = recuperacao + amount;

  bool hasRecuperacao() => _recuperacao != null;

  // "caixa" field.
  String? _caixa;
  String get caixa => _caixa ?? '';
  set caixa(String? val) => _caixa = val;

  bool hasCaixa() => _caixa != null;

  // "observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  set observacao(String? val) => _observacao = val;

  bool hasObservacao() => _observacao != null;

  // "boletimID" field.
  DocumentReference? _boletimID;
  DocumentReference? get boletimID => _boletimID;
  set boletimID(DocumentReference? val) => _boletimID = val;

  bool hasBoletimID() => _boletimID != null;

  // "boletim" field.
  BoletimStruct? _boletim;
  BoletimStruct get boletim => _boletim ?? BoletimStruct();
  set boletim(BoletimStruct? val) => _boletim = val;

  void updateBoletim(Function(BoletimStruct) updateFn) {
    updateFn(_boletim ??= BoletimStruct());
  }

  bool hasBoletim() => _boletim != null;

  // "atividadeID" field.
  DocumentReference? _atividadeID;
  DocumentReference? get atividadeID => _atividadeID;
  set atividadeID(DocumentReference? val) => _atividadeID = val;

  bool hasAtividadeID() => _atividadeID != null;

  // "atividade" field.
  AtividadeStruct? _atividade;
  AtividadeStruct get atividade => _atividade ?? AtividadeStruct();
  set atividade(AtividadeStruct? val) => _atividade = val;

  void updateAtividade(Function(AtividadeStruct) updateFn) {
    updateFn(_atividade ??= AtividadeStruct());
  }

  bool hasAtividade() => _atividade != null;

  // "furoID" field.
  DocumentReference? _furoID;
  DocumentReference? get furoID => _furoID;
  set furoID(DocumentReference? val) => _furoID = val;

  bool hasFuroID() => _furoID != null;

  // "furo" field.
  FuroStruct? _furo;
  FuroStruct get furo => _furo ?? FuroStruct();
  set furo(FuroStruct? val) => _furo = val;

  void updateFuro(Function(FuroStruct) updateFn) {
    updateFn(_furo ??= FuroStruct());
  }

  bool hasFuro() => _furo != null;

  // "diamentro" field.
  String? _diamentro;
  String get diamentro => _diamentro ?? '';
  set diamentro(String? val) => _diamentro = val;

  bool hasDiamentro() => _diamentro != null;

  // "litologia" field.
  String? _litologia;
  String get litologia => _litologia ?? '';
  set litologia(String? val) => _litologia = val;

  bool hasLitologia() => _litologia != null;

  // "dip" field.
  String? _dip;
  String get dip => _dip ?? '';
  set dip(String? val) => _dip = val;

  bool hasDip() => _dip != null;

  // "sync" field.
  bool? _sync;
  bool get sync => _sync ?? false;
  set sync(bool? val) => _sync = val;

  bool hasSync() => _sync != null;

  // "ordem" field.
  int? _ordem;
  int get ordem => _ordem ?? 0;
  set ordem(int? val) => _ordem = val;

  void incrementOrdem(int amount) => ordem = ordem + amount;

  bool hasOrdem() => _ordem != null;

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

  static AtividadeBoletimStruct fromMap(Map<String, dynamic> data) =>
      AtividadeBoletimStruct(
        id: data['ID'] as DocumentReference?,
        localID: data['localID'] as String?,
        localBoletimID: data['localBoletimID'] as String?,
        localFuroID: data['localFuroID'] as String?,
        inicio: data['inicio'] as DateTime?,
        termino: data['termino'] as DateTime?,
        de: castToType<double>(data['de']),
        avanco: castToType<double>(data['avanco']),
        recuperacao: castToType<double>(data['recuperacao']),
        caixa: data['caixa'] as String?,
        observacao: data['observacao'] as String?,
        boletimID: data['boletimID'] as DocumentReference?,
        boletim: data['boletim'] is BoletimStruct
            ? data['boletim']
            : BoletimStruct.maybeFromMap(data['boletim']),
        atividadeID: data['atividadeID'] as DocumentReference?,
        atividade: data['atividade'] is AtividadeStruct
            ? data['atividade']
            : AtividadeStruct.maybeFromMap(data['atividade']),
        furoID: data['furoID'] as DocumentReference?,
        furo: data['furo'] is FuroStruct
            ? data['furo']
            : FuroStruct.maybeFromMap(data['furo']),
        diamentro: data['diamentro'] as String?,
        litologia: data['litologia'] as String?,
        dip: data['dip'] as String?,
        sync: data['sync'] as bool?,
        ordem: castToType<int>(data['ordem']),
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static AtividadeBoletimStruct? maybeFromMap(dynamic data) => data is Map
      ? AtividadeBoletimStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'localID': _localID,
        'localBoletimID': _localBoletimID,
        'localFuroID': _localFuroID,
        'inicio': _inicio,
        'termino': _termino,
        'de': _de,
        'avanco': _avanco,
        'recuperacao': _recuperacao,
        'caixa': _caixa,
        'observacao': _observacao,
        'boletimID': _boletimID,
        'boletim': _boletim?.toMap(),
        'atividadeID': _atividadeID,
        'atividade': _atividade?.toMap(),
        'furoID': _furoID,
        'furo': _furo?.toMap(),
        'diamentro': _diamentro,
        'litologia': _litologia,
        'dip': _dip,
        'sync': _sync,
        'ordem': _ordem,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
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
        'localBoletimID': serializeParam(
          _localBoletimID,
          ParamType.String,
        ),
        'localFuroID': serializeParam(
          _localFuroID,
          ParamType.String,
        ),
        'inicio': serializeParam(
          _inicio,
          ParamType.DateTime,
        ),
        'termino': serializeParam(
          _termino,
          ParamType.DateTime,
        ),
        'de': serializeParam(
          _de,
          ParamType.double,
        ),
        'avanco': serializeParam(
          _avanco,
          ParamType.double,
        ),
        'recuperacao': serializeParam(
          _recuperacao,
          ParamType.double,
        ),
        'caixa': serializeParam(
          _caixa,
          ParamType.String,
        ),
        'observacao': serializeParam(
          _observacao,
          ParamType.String,
        ),
        'boletimID': serializeParam(
          _boletimID,
          ParamType.DocumentReference,
        ),
        'boletim': serializeParam(
          _boletim,
          ParamType.DataStruct,
        ),
        'atividadeID': serializeParam(
          _atividadeID,
          ParamType.DocumentReference,
        ),
        'atividade': serializeParam(
          _atividade,
          ParamType.DataStruct,
        ),
        'furoID': serializeParam(
          _furoID,
          ParamType.DocumentReference,
        ),
        'furo': serializeParam(
          _furo,
          ParamType.DataStruct,
        ),
        'diamentro': serializeParam(
          _diamentro,
          ParamType.String,
        ),
        'litologia': serializeParam(
          _litologia,
          ParamType.String,
        ),
        'dip': serializeParam(
          _dip,
          ParamType.String,
        ),
        'sync': serializeParam(
          _sync,
          ParamType.bool,
        ),
        'ordem': serializeParam(
          _ordem,
          ParamType.int,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static AtividadeBoletimStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AtividadeBoletimStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['atividadeBoletim'],
        ),
        localID: deserializeParam(
          data['localID'],
          ParamType.String,
          false,
        ),
        localBoletimID: deserializeParam(
          data['localBoletimID'],
          ParamType.String,
          false,
        ),
        localFuroID: deserializeParam(
          data['localFuroID'],
          ParamType.String,
          false,
        ),
        inicio: deserializeParam(
          data['inicio'],
          ParamType.DateTime,
          false,
        ),
        termino: deserializeParam(
          data['termino'],
          ParamType.DateTime,
          false,
        ),
        de: deserializeParam(
          data['de'],
          ParamType.double,
          false,
        ),
        avanco: deserializeParam(
          data['avanco'],
          ParamType.double,
          false,
        ),
        recuperacao: deserializeParam(
          data['recuperacao'],
          ParamType.double,
          false,
        ),
        caixa: deserializeParam(
          data['caixa'],
          ParamType.String,
          false,
        ),
        observacao: deserializeParam(
          data['observacao'],
          ParamType.String,
          false,
        ),
        boletimID: deserializeParam(
          data['boletimID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['boletim'],
        ),
        boletim: deserializeStructParam(
          data['boletim'],
          ParamType.DataStruct,
          false,
          structBuilder: BoletimStruct.fromSerializableMap,
        ),
        atividadeID: deserializeParam(
          data['atividadeID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['atividade'],
        ),
        atividade: deserializeStructParam(
          data['atividade'],
          ParamType.DataStruct,
          false,
          structBuilder: AtividadeStruct.fromSerializableMap,
        ),
        furoID: deserializeParam(
          data['furoID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['furo'],
        ),
        furo: deserializeStructParam(
          data['furo'],
          ParamType.DataStruct,
          false,
          structBuilder: FuroStruct.fromSerializableMap,
        ),
        diamentro: deserializeParam(
          data['diamentro'],
          ParamType.String,
          false,
        ),
        litologia: deserializeParam(
          data['litologia'],
          ParamType.String,
          false,
        ),
        dip: deserializeParam(
          data['dip'],
          ParamType.String,
          false,
        ),
        sync: deserializeParam(
          data['sync'],
          ParamType.bool,
          false,
        ),
        ordem: deserializeParam(
          data['ordem'],
          ParamType.int,
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
      );

  @override
  String toString() => 'AtividadeBoletimStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AtividadeBoletimStruct &&
        id == other.id &&
        localID == other.localID &&
        localBoletimID == other.localBoletimID &&
        localFuroID == other.localFuroID &&
        inicio == other.inicio &&
        termino == other.termino &&
        de == other.de &&
        avanco == other.avanco &&
        recuperacao == other.recuperacao &&
        caixa == other.caixa &&
        observacao == other.observacao &&
        boletimID == other.boletimID &&
        boletim == other.boletim &&
        atividadeID == other.atividadeID &&
        atividade == other.atividade &&
        furoID == other.furoID &&
        furo == other.furo &&
        diamentro == other.diamentro &&
        litologia == other.litologia &&
        dip == other.dip &&
        sync == other.sync &&
        ordem == other.ordem &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        localID,
        localBoletimID,
        localFuroID,
        inicio,
        termino,
        de,
        avanco,
        recuperacao,
        caixa,
        observacao,
        boletimID,
        boletim,
        atividadeID,
        atividade,
        furoID,
        furo,
        diamentro,
        litologia,
        dip,
        sync,
        ordem,
        createdAt,
        updatedAt
      ]);
}

AtividadeBoletimStruct createAtividadeBoletimStruct({
  DocumentReference? id,
  String? localID,
  String? localBoletimID,
  String? localFuroID,
  DateTime? inicio,
  DateTime? termino,
  double? de,
  double? avanco,
  double? recuperacao,
  String? caixa,
  String? observacao,
  DocumentReference? boletimID,
  BoletimStruct? boletim,
  DocumentReference? atividadeID,
  AtividadeStruct? atividade,
  DocumentReference? furoID,
  FuroStruct? furo,
  String? diamentro,
  String? litologia,
  String? dip,
  bool? sync,
  int? ordem,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AtividadeBoletimStruct(
      id: id,
      localID: localID,
      localBoletimID: localBoletimID,
      localFuroID: localFuroID,
      inicio: inicio,
      termino: termino,
      de: de,
      avanco: avanco,
      recuperacao: recuperacao,
      caixa: caixa,
      observacao: observacao,
      boletimID: boletimID,
      boletim: boletim ?? (clearUnsetFields ? BoletimStruct() : null),
      atividadeID: atividadeID,
      atividade: atividade ?? (clearUnsetFields ? AtividadeStruct() : null),
      furoID: furoID,
      furo: furo ?? (clearUnsetFields ? FuroStruct() : null),
      diamentro: diamentro,
      litologia: litologia,
      dip: dip,
      sync: sync,
      ordem: ordem,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AtividadeBoletimStruct? updateAtividadeBoletimStruct(
  AtividadeBoletimStruct? atividadeBoletim, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    atividadeBoletim
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAtividadeBoletimStructData(
  Map<String, dynamic> firestoreData,
  AtividadeBoletimStruct? atividadeBoletim,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (atividadeBoletim == null) {
    return;
  }
  if (atividadeBoletim.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && atividadeBoletim.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final atividadeBoletimData =
      getAtividadeBoletimFirestoreData(atividadeBoletim, forFieldValue);
  final nestedData =
      atividadeBoletimData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = atividadeBoletim.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAtividadeBoletimFirestoreData(
  AtividadeBoletimStruct? atividadeBoletim, [
  bool forFieldValue = false,
]) {
  if (atividadeBoletim == null) {
    return {};
  }
  final firestoreData = mapToFirestore(atividadeBoletim.toMap());

  // Handle nested data for "boletim" field.
  addBoletimStructData(
    firestoreData,
    atividadeBoletim.hasBoletim() ? atividadeBoletim.boletim : null,
    'boletim',
    forFieldValue,
  );

  // Handle nested data for "atividade" field.
  addAtividadeStructData(
    firestoreData,
    atividadeBoletim.hasAtividade() ? atividadeBoletim.atividade : null,
    'atividade',
    forFieldValue,
  );

  // Handle nested data for "furo" field.
  addFuroStructData(
    firestoreData,
    atividadeBoletim.hasFuro() ? atividadeBoletim.furo : null,
    'furo',
    forFieldValue,
  );

  // Add any Firestore field values
  atividadeBoletim.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAtividadeBoletimListFirestoreData(
  List<AtividadeBoletimStruct>? atividadeBoletims,
) =>
    atividadeBoletims
        ?.map((e) => getAtividadeBoletimFirestoreData(e, true))
        .toList() ??
    [];
