import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> createPost(String userId, Map<String, dynamic> postData) async {
    await _db.collection('posts').add(postData);
  }

  Future<void> updatePost(String postId, Map<String, dynamic> data) async {
    await _db.collection('posts').doc(postId).update(data);
  }

  Future<void> deletePost(String postId) async {
    await _db.collection('posts').doc(postId).delete();
  }

  Future<void> addComment(String postId, Map<String, dynamic> commentData) async {
    await _db.collection('posts').doc(postId).collection('comments').add(commentData);
  }

  Future<void> addFriend(String userId, String friendId) async {
    await _db.collection('users').doc(userId).collection('friends').doc(friendId).set({});
  }

  Future<void> createFolder(String userId, Map<String, dynamic> folderData) async {
    await _db.collection('users').doc(userId).collection('folders').add(folderData);
  }
}
