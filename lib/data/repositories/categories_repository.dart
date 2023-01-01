import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grofast/data/models/categories/categories_model.dart';
import 'package:grofast/utils/my_utils.dart';

class CategoryRepository {
  final FirebaseFirestore _firestore;

  CategoryRepository({required FirebaseFirestore firebaseFirestore})
      : _firestore = firebaseFirestore;

  Future<void> addCategory({required CategoryModel categoryModel}) async {
    try {
      var newCategory =
          await _firestore.collection("categories").add(categoryModel.toJson());
      await _firestore.collection("categories").doc(newCategory.id).update({
        "category_id": newCategory.id,
      });
      MyUtils.getMyToast(message: "Kategoriya muvaffaqiyatli qo'shiladi!");
    } on FirebaseException catch (error) {
      MyUtils.getMyToast(message: error.message.toString());
    }
  }

  Future<void> deleteCategory({required String docId}) async {
    try {
      await _firestore.collection("categories").doc(docId).delete();
      MyUtils.getMyToast(message: "Kategoriya muvaffaqiyatli o'chirildi!");
    } on FirebaseException catch (error) {
      MyUtils.getMyToast(message: error.message.toString());
    }
  }

  Future<void> updateCategory({required CategoryModel categoryModel}) async {
    try {
      await _firestore
          .collection("categories")
          .doc(categoryModel.categoryId)
          .update(categoryModel.toJson());

      MyUtils.getMyToast(message: "Kategoriya muvaffaqiyatli yangilandi!");
    } on FirebaseException catch (error) {
      MyUtils.getMyToast(message: error.message.toString());
    }
  }

  Stream<List<CategoryModel>> getAllCategories() =>
      _firestore.collection("categories").snapshots().map(
            (event1) => event1.docs
                .map((doc) => CategoryModel.fromJson(doc.data()))
                .toList(),
          );
}