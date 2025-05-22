import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientesRecord extends FirestoreRecord {
  ClientesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cliente" field.
  ClienteStruct? _cliente;
  ClienteStruct get cliente => _cliente ?? ClienteStruct();
  bool hasCliente() => _cliente != null;

  void _initializeFields() {
    _cliente = snapshotData['cliente'] is ClienteStruct
        ? snapshotData['cliente']
        : ClienteStruct.maybeFromMap(snapshotData['cliente']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clientes');

  static Stream<ClientesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientesRecord.fromSnapshot(s));

  static Future<ClientesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientesRecord.fromSnapshot(s));

  static ClientesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClientesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClientesRecordData({
  ClienteStruct? cliente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cliente': ClienteStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "cliente" field.
  addClienteStructData(firestoreData, cliente, 'cliente');

  return firestoreData;
}

class ClientesRecordDocumentEquality implements Equality<ClientesRecord> {
  const ClientesRecordDocumentEquality();

  @override
  bool equals(ClientesRecord? e1, ClientesRecord? e2) {
    return e1?.cliente == e2?.cliente;
  }

  @override
  int hash(ClientesRecord? e) => const ListEquality().hash([e?.cliente]);

  @override
  bool isValidKey(Object? o) => o is ClientesRecord;
}
