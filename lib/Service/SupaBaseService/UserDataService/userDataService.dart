
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../Utils/AppString.dart';

class UserDataService {
  static UserDataService get instance=>Get.find<UserDataService>();
  final SupabaseClient client;
  UserDataService(this.client);

  Future<void> updateWishlist(String userId, List<String> wishlist) async {
      try{
        await client.from(AppString.user.capitalize!)
            .update({'wish_list': wishlist})
            .eq('userId', userId);
      }catch(e){
        throw Exception(e.toString());
      }
  }
  Future<void> updateCartList(String userId, List<String> cartList) async {
    try{
      await client.from(AppString.user.capitalize!)
          .update({'cart': cartList})
          .eq('userId', userId);
    }catch(e){
      throw Exception(e.toString());
    }
  }
  Future<void> updateEnrollList(String userId, List<String> enrollList) async {
    try{
      await client.from(AppString.user.capitalize!)
          .update({'cart': enrollList})
          .eq('userId', userId);
    }catch(e){
      throw Exception(e.toString());
    }
  }

  Future<void> uploadImage(BuildContext context) async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? pickedFile =
      await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No image selected.')),
        );
        return;
      }

      final Uint8List imageData = await pickedFile.readAsBytes();
      final String folder='profile_pic';
      final String filename=pickedFile.name;
      final String path='$folder/$filename';
      final res= await client.storage.from('courses').uploadBinary(path, imageData);
    }catch(e){
      throw Exception(e.toString());
    }
  }

}


