// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlvoStruct extends FFFirebaseStruct {
  AlvoStruct({
    DocumentReference? id,
    String? nomeAlvo,
    DocumentReference? projetoID,
    ProjetoStruct? projeto,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nomeAlvo = nomeAlvo,
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

  // "nomeAlvo" field.
  String? _nomeAlvo;
  String get nomeAlvo => _nomeAlvo ?? '';
  set nomeAlvo(String? val) => _nomeAlvo = val;

  bool hasNomeAlvo() => _nomeAlvo != null;

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

  static AlvoStruct fromMap(Map<String, dynamic> data) => AlvoStruct(
        id: data['ID'] as DocumentReference?,
        nomeAlvo: data['nomeAlvo'] as String?,
        projetoID: data['projetoID'] as DocumentReference?,
        projeto: data['projeto'] is ProjetoStruct
            ? data['projeto']
            : ProjetoStruct.maybeFromMap(data['projeto']),
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static AlvoStruct? maybeFromMap(dynamic data) =>
      data is Map ? AlvoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'nomeAlvo': _nomeAlvo,
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
        'nomeAlvo': serializeParam(
          _nomeAlvo,
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

  static AlvoStruct fromSerializableMap(Map<String, dynamic> data) =>
      AlvoStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['alvo'],
        ),
        nomeAlvo: deserializeParam(
          data['nomeAlvo'],
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
  String toString() => 'AlvoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AlvoStruct &&
        id == other.id &&
        nomeAlvo == other.nomeAlvo &&
        projetoID == other.projetoID &&
        projeto == other.projeto &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, nomeAlvo, projetoID, projeto, createdAt, updatedAt]);
}

AlvoStruct createAlvoStruct({
  DocumentReference? id,
  String? nomeAlvo,
  DocumentReference? projetoID,
  ProjetoStruct? projeto,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AlvoStruct(
      id: id,
      nomeAlvo: nomeAlvo,
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

AlvoStruct? updateAlvoStruct(
  AlvoStruct? alvo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    alvo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAlvoStructData(
  Map<String, dynamic> firestoreData,
  AlvoStruct? alvo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (alvo == null) {
    return;
  }
  if (alvo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && alvo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final alvoData = getAlvoFirestoreData(alvo, forFieldValue);
  final nestedData = alvoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = alvo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAlvoFirestoreData(
  AlvoStruct? alvo, [
  bool forFieldValue = false,
]) {
  if (alvo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(alvo.toMap());

  // Handle nested data for "projeto" field.
  addProjetoStructData(
    firestoreData,
    alvo.hasProjeto() ? alvo.projeto : null,
    'projeto',
    forFieldValue,
  );

  // Add any Firestore field values
  alvo.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAlvoListFirestoreData(
  List<AlvoStruct>? alvos,
) =>
    alvos?.map((e) => getAlvoFirestoreData(e, true)).toList() ?? [];
