// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TurnoStruct extends FFFirebaseStruct {
  TurnoStruct({
    DocumentReference? id,
    String? nomeTurno,
    String? codigo,
    String? inicio,
    String? termino,
    DocumentReference? projetoID,
    ProjetoStruct? projeto,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nomeTurno = nomeTurno,
        _codigo = codigo,
        _inicio = inicio,
        _termino = termino,
        _projetoID = projetoID,
        _projeto = projeto,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "ID" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "nomeTurno" field.
  String? _nomeTurno;
  String get nomeTurno => _nomeTurno ?? '';
  set nomeTurno(String? val) => _nomeTurno = val;

  bool hasNomeTurno() => _nomeTurno != null;

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "inicio" field.
  String? _inicio;
  String get inicio => _inicio ?? '';
  set inicio(String? val) => _inicio = val;

  bool hasInicio() => _inicio != null;

  // "termino" field.
  String? _termino;
  String get termino => _termino ?? '';
  set termino(String? val) => _termino = val;

  bool hasTermino() => _termino != null;

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

  static TurnoStruct fromMap(Map<String, dynamic> data) => TurnoStruct(
        id: data['ID'] as DocumentReference?,
        nomeTurno: data['nomeTurno'] as String?,
        codigo: data['codigo'] as String?,
        inicio: data['inicio'] as String?,
        termino: data['termino'] as String?,
        projetoID: data['projetoID'] as DocumentReference?,
        projeto: data['projeto'] is ProjetoStruct
            ? data['projeto']
            : ProjetoStruct.maybeFromMap(data['projeto']),
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static TurnoStruct? maybeFromMap(dynamic data) =>
      data is Map ? TurnoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'nomeTurno': _nomeTurno,
        'codigo': _codigo,
        'inicio': _inicio,
        'termino': _termino,
        'projetoID': _projetoID,
        'projeto': _projeto?.toMap(),
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.DocumentReference,
        ),
        'nomeTurno': serializeParam(
          _nomeTurno,
          ParamType.String,
        ),
        'codigo': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'inicio': serializeParam(
          _inicio,
          ParamType.String,
        ),
        'termino': serializeParam(
          _termino,
          ParamType.String,
        ),
        'projetoID': serializeParam(
          _projetoID,
          ParamType.DocumentReference,
        ),
        'projeto': serializeParam(
          _projeto,
          ParamType.DataStruct,
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

  static TurnoStruct fromSerializableMap(Map<String, dynamic> data) =>
      TurnoStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['turno'],
        ),
        nomeTurno: deserializeParam(
          data['nomeTurno'],
          ParamType.String,
          false,
        ),
        codigo: deserializeParam(
          data['codigo'],
          ParamType.String,
          false,
        ),
        inicio: deserializeParam(
          data['inicio'],
          ParamType.String,
          false,
        ),
        termino: deserializeParam(
          data['termino'],
          ParamType.String,
          false,
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
  String toString() => 'TurnoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TurnoStruct &&
        id == other.id &&
        nomeTurno == other.nomeTurno &&
        codigo == other.codigo &&
        inicio == other.inicio &&
        termino == other.termino &&
        projetoID == other.projetoID &&
        projeto == other.projeto &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nomeTurno,
        codigo,
        inicio,
        termino,
        projetoID,
        projeto,
        createdAt,
        updatedAt
      ]);
}

TurnoStruct createTurnoStruct({
  DocumentReference? id,
  String? nomeTurno,
  String? codigo,
  String? inicio,
  String? termino,
  DocumentReference? projetoID,
  ProjetoStruct? projeto,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TurnoStruct(
      id: id,
      nomeTurno: nomeTurno,
      codigo: codigo,
      inicio: inicio,
      termino: termino,
      projetoID: projetoID,
      projeto: projeto ?? (clearUnsetFields ? ProjetoStruct() : null),
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TurnoStruct? updateTurnoStruct(
  TurnoStruct? turno, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    turno
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTurnoStructData(
  Map<String, dynamic> firestoreData,
  TurnoStruct? turno,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (turno == null) {
    return;
  }
  if (turno.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && turno.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final turnoData = getTurnoFirestoreData(turno, forFieldValue);
  final nestedData = turnoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = turno.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTurnoFirestoreData(
  TurnoStruct? turno, [
  bool forFieldValue = false,
]) {
  if (turno == null) {
    return {};
  }
  final firestoreData = mapToFirestore(turno.toMap());

  // Handle nested data for "projeto" field.
  addProjetoStructData(
    firestoreData,
    turno.hasProjeto() ? turno.projeto : null,
    'projeto',
    forFieldValue,
  );

  // Add any Firestore field values
  turno.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTurnoListFirestoreData(
  List<TurnoStruct>? turnos,
) =>
    turnos?.map((e) => getTurnoFirestoreData(e, true)).toList() ?? [];
