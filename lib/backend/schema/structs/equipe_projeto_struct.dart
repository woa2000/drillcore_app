// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EquipeProjetoStruct extends FFFirebaseStruct {
  EquipeProjetoStruct({
    DocumentReference? id,
    DocumentReference? projetoID,
    DocumentReference? equipeID,
    EquipeStruct? equipe,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _projetoID = projetoID,
        _equipeID = equipeID,
        _equipe = equipe,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "ID" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "projetoID" field.
  DocumentReference? _projetoID;
  DocumentReference? get projetoID => _projetoID;
  set projetoID(DocumentReference? val) => _projetoID = val;

  bool hasProjetoID() => _projetoID != null;

  // "equipeID" field.
  DocumentReference? _equipeID;
  DocumentReference? get equipeID => _equipeID;
  set equipeID(DocumentReference? val) => _equipeID = val;

  bool hasEquipeID() => _equipeID != null;

  // "equipe" field.
  EquipeStruct? _equipe;
  EquipeStruct get equipe => _equipe ?? EquipeStruct();
  set equipe(EquipeStruct? val) => _equipe = val;

  void updateEquipe(Function(EquipeStruct) updateFn) {
    updateFn(_equipe ??= EquipeStruct());
  }

  bool hasEquipe() => _equipe != null;

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

  static EquipeProjetoStruct fromMap(Map<String, dynamic> data) =>
      EquipeProjetoStruct(
        id: data['ID'] as DocumentReference?,
        projetoID: data['projetoID'] as DocumentReference?,
        equipeID: data['equipeID'] as DocumentReference?,
        equipe: data['equipe'] is EquipeStruct
            ? data['equipe']
            : EquipeStruct.maybeFromMap(data['equipe']),
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static EquipeProjetoStruct? maybeFromMap(dynamic data) => data is Map
      ? EquipeProjetoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'projetoID': _projetoID,
        'equipeID': _equipeID,
        'equipe': _equipe?.toMap(),
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.DocumentReference,
        ),
        'projetoID': serializeParam(
          _projetoID,
          ParamType.DocumentReference,
        ),
        'equipeID': serializeParam(
          _equipeID,
          ParamType.DocumentReference,
        ),
        'equipe': serializeParam(
          _equipe,
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

  static EquipeProjetoStruct fromSerializableMap(Map<String, dynamic> data) =>
      EquipeProjetoStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['equipeProjeto'],
        ),
        projetoID: deserializeParam(
          data['projetoID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['projeto'],
        ),
        equipeID: deserializeParam(
          data['equipeID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['equipe'],
        ),
        equipe: deserializeStructParam(
          data['equipe'],
          ParamType.DataStruct,
          false,
          structBuilder: EquipeStruct.fromSerializableMap,
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
  String toString() => 'EquipeProjetoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EquipeProjetoStruct &&
        id == other.id &&
        projetoID == other.projetoID &&
        equipeID == other.equipeID &&
        equipe == other.equipe &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, projetoID, equipeID, equipe, createdAt, updatedAt]);
}

EquipeProjetoStruct createEquipeProjetoStruct({
  DocumentReference? id,
  DocumentReference? projetoID,
  DocumentReference? equipeID,
  EquipeStruct? equipe,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EquipeProjetoStruct(
      id: id,
      projetoID: projetoID,
      equipeID: equipeID,
      equipe: equipe ?? (clearUnsetFields ? EquipeStruct() : null),
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EquipeProjetoStruct? updateEquipeProjetoStruct(
  EquipeProjetoStruct? equipeProjeto, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    equipeProjeto
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEquipeProjetoStructData(
  Map<String, dynamic> firestoreData,
  EquipeProjetoStruct? equipeProjeto,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (equipeProjeto == null) {
    return;
  }
  if (equipeProjeto.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && equipeProjeto.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final equipeProjetoData =
      getEquipeProjetoFirestoreData(equipeProjeto, forFieldValue);
  final nestedData =
      equipeProjetoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = equipeProjeto.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEquipeProjetoFirestoreData(
  EquipeProjetoStruct? equipeProjeto, [
  bool forFieldValue = false,
]) {
  if (equipeProjeto == null) {
    return {};
  }
  final firestoreData = mapToFirestore(equipeProjeto.toMap());

  // Handle nested data for "equipe" field.
  addEquipeStructData(
    firestoreData,
    equipeProjeto.hasEquipe() ? equipeProjeto.equipe : null,
    'equipe',
    forFieldValue,
  );

  // Add any Firestore field values
  equipeProjeto.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEquipeProjetoListFirestoreData(
  List<EquipeProjetoStruct>? equipeProjetos,
) =>
    equipeProjetos
        ?.map((e) => getEquipeProjetoFirestoreData(e, true))
        .toList() ??
    [];
