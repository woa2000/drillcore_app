// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FuroBoletimStruct extends FFFirebaseStruct {
  FuroBoletimStruct({
    DocumentReference? id,
    String? localID,
    String? localFuroID,
    String? localBoletimID,
    DocumentReference? furoID,
    FuroStruct? furo,
    DocumentReference? boletimID,
    bool? ativo,
    bool? sync,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _localID = localID,
        _localFuroID = localFuroID,
        _localBoletimID = localBoletimID,
        _furoID = furoID,
        _furo = furo,
        _boletimID = boletimID,
        _ativo = ativo,
        _sync = sync,
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

  // "localFuroID" field.
  String? _localFuroID;
  String get localFuroID => _localFuroID ?? '';
  set localFuroID(String? val) => _localFuroID = val;

  bool hasLocalFuroID() => _localFuroID != null;

  // "localBoletimID" field.
  String? _localBoletimID;
  String get localBoletimID => _localBoletimID ?? '';
  set localBoletimID(String? val) => _localBoletimID = val;

  bool hasLocalBoletimID() => _localBoletimID != null;

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

  // "boletimID" field.
  DocumentReference? _boletimID;
  DocumentReference? get boletimID => _boletimID;
  set boletimID(DocumentReference? val) => _boletimID = val;

  bool hasBoletimID() => _boletimID != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

  // "sync" field.
  bool? _sync;
  bool get sync => _sync ?? false;
  set sync(bool? val) => _sync = val;

  bool hasSync() => _sync != null;

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

  static FuroBoletimStruct fromMap(Map<String, dynamic> data) =>
      FuroBoletimStruct(
        id: data['ID'] as DocumentReference?,
        localID: data['localID'] as String?,
        localFuroID: data['localFuroID'] as String?,
        localBoletimID: data['localBoletimID'] as String?,
        furoID: data['furoID'] as DocumentReference?,
        furo: data['furo'] is FuroStruct
            ? data['furo']
            : FuroStruct.maybeFromMap(data['furo']),
        boletimID: data['boletimID'] as DocumentReference?,
        ativo: data['ativo'] as bool?,
        sync: data['sync'] as bool?,
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static FuroBoletimStruct? maybeFromMap(dynamic data) => data is Map
      ? FuroBoletimStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'localID': _localID,
        'localFuroID': _localFuroID,
        'localBoletimID': _localBoletimID,
        'furoID': _furoID,
        'furo': _furo?.toMap(),
        'boletimID': _boletimID,
        'ativo': _ativo,
        'sync': _sync,
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
        'localFuroID': serializeParam(
          _localFuroID,
          ParamType.String,
        ),
        'localBoletimID': serializeParam(
          _localBoletimID,
          ParamType.String,
        ),
        'furoID': serializeParam(
          _furoID,
          ParamType.DocumentReference,
        ),
        'furo': serializeParam(
          _furo,
          ParamType.DataStruct,
        ),
        'boletimID': serializeParam(
          _boletimID,
          ParamType.DocumentReference,
        ),
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
        ),
        'sync': serializeParam(
          _sync,
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

  static FuroBoletimStruct fromSerializableMap(Map<String, dynamic> data) =>
      FuroBoletimStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['furoBoletim'],
        ),
        localID: deserializeParam(
          data['localID'],
          ParamType.String,
          false,
        ),
        localFuroID: deserializeParam(
          data['localFuroID'],
          ParamType.String,
          false,
        ),
        localBoletimID: deserializeParam(
          data['localBoletimID'],
          ParamType.String,
          false,
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
        boletimID: deserializeParam(
          data['boletimID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['boletim'],
        ),
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
          false,
        ),
        sync: deserializeParam(
          data['sync'],
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
  String toString() => 'FuroBoletimStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FuroBoletimStruct &&
        id == other.id &&
        localID == other.localID &&
        localFuroID == other.localFuroID &&
        localBoletimID == other.localBoletimID &&
        furoID == other.furoID &&
        furo == other.furo &&
        boletimID == other.boletimID &&
        ativo == other.ativo &&
        sync == other.sync &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        localID,
        localFuroID,
        localBoletimID,
        furoID,
        furo,
        boletimID,
        ativo,
        sync,
        createdAt,
        updatedAt
      ]);
}

FuroBoletimStruct createFuroBoletimStruct({
  DocumentReference? id,
  String? localID,
  String? localFuroID,
  String? localBoletimID,
  DocumentReference? furoID,
  FuroStruct? furo,
  DocumentReference? boletimID,
  bool? ativo,
  bool? sync,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FuroBoletimStruct(
      id: id,
      localID: localID,
      localFuroID: localFuroID,
      localBoletimID: localBoletimID,
      furoID: furoID,
      furo: furo ?? (clearUnsetFields ? FuroStruct() : null),
      boletimID: boletimID,
      ativo: ativo,
      sync: sync,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FuroBoletimStruct? updateFuroBoletimStruct(
  FuroBoletimStruct? furoBoletim, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    furoBoletim
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFuroBoletimStructData(
  Map<String, dynamic> firestoreData,
  FuroBoletimStruct? furoBoletim,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (furoBoletim == null) {
    return;
  }
  if (furoBoletim.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && furoBoletim.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final furoBoletimData =
      getFuroBoletimFirestoreData(furoBoletim, forFieldValue);
  final nestedData =
      furoBoletimData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = furoBoletim.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFuroBoletimFirestoreData(
  FuroBoletimStruct? furoBoletim, [
  bool forFieldValue = false,
]) {
  if (furoBoletim == null) {
    return {};
  }
  final firestoreData = mapToFirestore(furoBoletim.toMap());

  // Handle nested data for "furo" field.
  addFuroStructData(
    firestoreData,
    furoBoletim.hasFuro() ? furoBoletim.furo : null,
    'furo',
    forFieldValue,
  );

  // Add any Firestore field values
  furoBoletim.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFuroBoletimListFirestoreData(
  List<FuroBoletimStruct>? furoBoletims,
) =>
    furoBoletims?.map((e) => getFuroBoletimFirestoreData(e, true)).toList() ??
    [];
