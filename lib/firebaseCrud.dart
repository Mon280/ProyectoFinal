import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('Employee');
class FirebaseCrud {
  Stream<List<RecetaClass>> readRecetas() => FirebaseFirestore.instance.collection('receta')
      .snapshots().map((snapshot) => snapshot.docs.map( (doc) => RecetaClass.fromJson(doc.data()) ).toList());
  
  Future<RecetaClass?> readReceta() async{
    final docReceta = FirebaseFirestore.instance.collection('receta').doc(/*id*/);
    final snapshot = await docReceta.get();

    if(snapshot.exists){
      return RecetaClass.fromJson(snapshot.data()!);
    }
  }
  
  Future addReceta({
    required String nombre,
    required String descripcion,
    required String ingredientes,
    required String pasos,
  }) async {
    final docReceta = FirebaseFirestore.instance.collection('receta').doc();

    final receta = RecetaClass(
      id: docReceta.id,
      nombre: nombre,
      desc: descripcion,
      ingredientes: ingredientes,
      pasos: pasos,
    );
    final json = receta.toJson();

    await docReceta.set(json);
  }
}

class RecetaClass{
  String id;
  final String nombre;
  final String desc;
  final String ingredientes;
  final String pasos;

  RecetaClass({this.id='',required this.nombre,required this.desc,required this.ingredientes, required this.pasos});

  Map<String, dynamic> toJson() => {
    'id': id,
    'nombre': nombre,
    'descripcion': desc,
    'ingredientes': ingredientes,
    'pasos': pasos,
  };

  static RecetaClass fromJson(Map<String, dynamic> json) => RecetaClass(
    id: json['id'],
    nombre: json['nombre'],
    desc: json['descripcion'],
    ingredientes: json['ingredientes'],
    pasos: json['pasos']
  );
}