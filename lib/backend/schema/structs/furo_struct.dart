// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FuroStruct extends FFFirebaseStruct {
  FuroStruct({
    DocumentReference? id,
    String? localID,
    String? nomeFuro,
    String? status,
    bool? furoOrientado,
    DocumentReference? alvoID,
    AlvoStruct? alvo,
    bool? sync,
    double? profundidade,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _localID = localID,
        _nomeFuro = nomeFuro,
        _status = status,
        _furoOrientado = furoOrientado,
        _alvoID = alvoID,
        _alvo = alvo,
        _sync = sync,
        _profundidade = profundidade,
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

  // "nomeFuro" field.
  String? _nomeFuro;
  String get nomeFuro => _nomeFuro ?? '';
  set nomeFuro(String? val) => _nomeFuro = val;

  bool hasNomeFuro() => _nomeFuro != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "furoOrientado" field.
  bool? _furoOrientado;
  bool get furoOrientado => _furoOrientado ?? false;
  set furoOrientado(bool? val) => _furoOrientado = val;

  bool hasFuroOrientado() => _furoOrientado != null;

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

  // "sync" field.
  bool? _sync;
  bool get sync => _sync ?? false;
  set sync(bool? val) => _sync = val;

  bool hasSync() => _sync != null;

  // "profundidade" field.
  double? _profundidade;
  double get profundidade => _profundidade ?? 0.0;
  set profundidade(double? val) => _profundidade = val;

  void incrementProfundidade(double amount) =>
      profundidade = profundidade + amount;

  bool hasProfundidade() => _profundidade != null;

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

  static FuroStruct fromMap(Map<String, dynamic> data) => FuroStruct(
        id: data['ID'] as DocumentReference?,
        localID: data['localID'] as String?,
        nomeFuro: data['nomeFuro'] as String?,
        status: data['status'] as String?,
        furoOrientado: data['furoOrientado'] as bool?,
        alvoID: data['alvoID'] as DocumentReference?,
        alvo: data['alvo'] is AlvoStruct
            ? data['alvo']
            : AlvoStruct.maybeFromMap(data['alvo']),
        sync: data['sync'] as bool?,
        profundidade: castToType<double>(data['profundidade']),
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static FuroStruct? maybeFromMap(dynamic data) =>
      data is Map ? FuroStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'localID': _localID,
        'nomeFuro': _nomeFuro,
        'status': _status,
        'furoOrientado': _furoOrientado,
        'alvoID': _alvoID,
        'alvo': _alvo?.toMap(),
        'sync': _sync,
        'profundidade': _profundidade,
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
        'nomeFuro': serializeParam(
          _nomeFuro,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'furoOrientado': serializeParam(
          _furoOrientado,
          ParamType.bool,
        ),
        'alvoID': serializeParam(
          _alvoID,
          ParamType.DocumentReference,
        ),
        'alvo': serializeParam(
          _alvo,
          ParamType.DataStruct,
        ),
        'sync': serializeParam(
          _sync,
          ParamType.bool,
        ),
        'profundidade': serializeParam(
          _profundidade,
          ParamType.double,
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

  static FuroStruct fromSerializableMap(Map<String, dynamic> data) =>
      FuroStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['furo'],
        ),
        localID: deserializeParam(
          data['localID'],
          ParamType.String,
          false,
        ),
        nomeFuro: deserializeParam(
          data['nomeFuro'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        furoOrientado: deserializeParam(
          data['furoOrientado'],
          ParamType.bool,
          false,
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
        sync: deserializeParam(
          data['sync'],
          ParamType.bool,
          false,
        ),
        profundidade: deserializeParam(
          data['profundidade'],
          ParamType.double,
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
  String toString() => 'FuroStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FuroStruct &&
        id == other.id &&
        localID == other.localID &&
        nomeFuro == other.nomeFuro &&
        status == other.status &&
        furoOrientado == other.furoOrientado &&
        alvoID == other.alvoID &&
        alvo == other.alvo &&
        sync == other.sync &&
        profundidade == other.profundidade &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        localID,
        nomeFuro,
        status,
        furoOrientado,
        alvoID,
        alvo,
        sync,
        profundidade,
        createdAt,
        updatedAt
      ]);
}

FuroStruct createFuroStruct({
  DocumentReference? id,
  String? localID,
  String? nomeFuro,
  String? status,
  bool? furoOrientado,
  DocumentReference? alvoID,
  AlvoStruct? alvo,
  bool? sync,
  double? profundidade,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FuroStruct(
      id: id,
      localID: localID,
      nomeFuro: nomeFuro,
      status: status,
      furoOrientado: furoOrientado,
      alvoID: alvoID,
      alvo: alvo ?? (clearUnsetFields ? AlvoStruct() : null),
      sync: sync,
      profundidade: profundidade,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FuroStruct? updateFuroStruct(
  FuroStruct? furo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    furo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFuroStructData(
  Map<String, dynamic> firestoreData,
  FuroStruct? furo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (furo == null) {
    return;
  }
  if (furo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && furo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final furoData = getFuroFirestoreData(furo, forFieldValue);
  final nestedData = furoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = furo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFuroFirestoreData(
  FuroStruct? furo, [
  bool forFieldValue = false,
]) {
  if (furo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(furo.toMap());

  // Handle nested data for "alvo" field.
  addAlvoStructData(
    firestoreData,
    furo.hasAlvo() ? furo.alvo : null,
    'alvo',
    forFieldValue,
  );

  // Add any Firestore field values
  furo.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFuroListFirestoreData(
  List<FuroStruct>? furos,
) =>
    furos?.map((e) => getFuroFirestoreData(e, true)).toList() ?? [];
