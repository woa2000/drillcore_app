// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SondaStruct extends FFFirebaseStruct {
  SondaStruct({
    DocumentReference? id,
    String? nomeSonda,
    bool? ativo,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nomeSonda = nomeSonda,
        _ativo = ativo,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "ID" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "nomeSonda" field.
  String? _nomeSonda;
  String get nomeSonda => _nomeSonda ?? '';
  set nomeSonda(String? val) => _nomeSonda = val;

  bool hasNomeSonda() => _nomeSonda != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

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

  static SondaStruct fromMap(Map<String, dynamic> data) => SondaStruct(
        id: data['ID'] as DocumentReference?,
        nomeSonda: data['nomeSonda'] as String?,
        ativo: data['ativo'] as bool?,
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static SondaStruct? maybeFromMap(dynamic data) =>
      data is Map ? SondaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'nomeSonda': _nomeSonda,
        'ativo': _ativo,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.DocumentReference,
        ),
        'nomeSonda': serializeParam(
          _nomeSonda,
          ParamType.String,
        ),
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
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

  static SondaStruct fromSerializableMap(Map<String, dynamic> data) =>
      SondaStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['sonda'],
        ),
        nomeSonda: deserializeParam(
          data['nomeSonda'],
          ParamType.String,
          false,
        ),
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
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
  String toString() => 'SondaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SondaStruct &&
        id == other.id &&
        nomeSonda == other.nomeSonda &&
        ativo == other.ativo &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, nomeSonda, ativo, createdAt, updatedAt]);
}

SondaStruct createSondaStruct({
  DocumentReference? id,
  String? nomeSonda,
  bool? ativo,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SondaStruct(
      id: id,
      nomeSonda: nomeSonda,
      ativo: ativo,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SondaStruct? updateSondaStruct(
  SondaStruct? sonda, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sonda
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSondaStructData(
  Map<String, dynamic> firestoreData,
  SondaStruct? sonda,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sonda == null) {
    return;
  }
  if (sonda.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sonda.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sondaData = getSondaFirestoreData(sonda, forFieldValue);
  final nestedData = sondaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sonda.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSondaFirestoreData(
  SondaStruct? sonda, [
  bool forFieldValue = false,
]) {
  if (sonda == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sonda.toMap());

  // Add any Firestore field values
  sonda.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSondaListFirestoreData(
  List<SondaStruct>? sondas,
) =>
    sondas?.map((e) => getSondaFirestoreData(e, true)).toList() ?? [];
