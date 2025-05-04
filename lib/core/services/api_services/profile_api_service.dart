import 'package:foodi_chefs/core/constants/url_endpoints.dart';
import 'package:foodi_chefs/models/profile_model.dart';
import 'package:http/http.dart' as http;

class ProfileApiService {
  Future<ProfileModel?> fetchProfile() async {
    return await http.get(Uri.parse(profileUrl)).then((response) {
      if (response.statusCode == 200) {
        // Parse the response body and return a ProfileModel object
        return ProfileModel.fromJson(response.body as Map<String, dynamic>);
      } else {
        throw Exception('Failed to load profile');
      }
    });
  }

  Future<ProfileModel?> updateProfile(ProfileModel newProfile) async {
    return await http
        .post(
          Uri.parse(profileUpdateUrl),
          headers: {'Content-Type': 'application/json'},
          body: newProfile.toJson(),
        )
        .then((response) {
          if (response.statusCode == 200) {
            // Parse the response body and return a ProfileModel object
            return ProfileModel.fromJson(response.body as Map<String, dynamic>);
          } else {
            throw Exception('Failed to update profile');
          }
        });
  }

  Future<Map<String, dynamic>> getProfilePictureUploadLink() async {
    final response = await http.get(Uri.parse(profilePictureUrl));
    if (response.statusCode == 200) {
      // Parse the response and return the upload link
      return response.body as Map<String, dynamic>;
    } else {
      throw Exception('Failed to get upload link');
    }
  }

  Future<void> uploadProfilePicture(String filePath) async {
    final request = http.MultipartRequest('POST', Uri.parse(profilePictureUrl));
    request.files.add(await http.MultipartFile.fromPath('file', filePath));
    final response = await request.send();
    if (response.statusCode != 200) {
      throw Exception('Failed to upload profile picture');
    }
  }
}
