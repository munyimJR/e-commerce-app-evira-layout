import 'package:flutter_test/flutter_test.dart';
import 'package:e_commerce_app_v1/features/profile/models/user_model.dart';

void main() {
  group('UserModel Serialization & Methods', () {
    test('fromJson parses user payload correctly', () {
      final json = {
        'id': 1,
        'username': 'emilys',
        'email': 'emily.johnson@x.dummyjson.com',
        'firstName': 'Emily',
        'lastName': 'Johnson',
        'gender': 'female',
        'image': 'https://dummyjson.com/icon/emilys/128',
        'accessToken': 'sample_token_xyz',
      };

      final user = UserModel.fromJson(json);

      expect(user.id, 1);
      expect(user.username, 'emilys');
      expect(user.email, 'emily.johnson@x.dummyjson.com');
      expect(user.firstName, 'Emily');
      expect(user.lastName, 'Johnson');
      expect(user.fullName, 'Emily Johnson');
      expect(user.gender, 'female');
      expect(user.image, 'https://dummyjson.com/icon/emilys/128');
      expect(user.accessToken, 'sample_token_xyz');
    });

    test('toJson produces expected map', () {
      const user = UserModel(
        id: 2,
        username: 'michaelw',
        email: 'michael.williams@x.dummyjson.com',
        firstName: 'Michael',
        lastName: 'Williams',
        gender: 'male',
        image: 'https://dummyjson.com/icon/michaelw/128',
      );

      final json = user.toJson();

      expect(json['id'], 2);
      expect(json['username'], 'michaelw');
      expect(json['firstName'], 'Michael');
      expect(json['lastName'], 'Williams');
      expect(json['gender'], 'male');
    });

    test('copyWith updates fields as requested', () {
      final updated = UserModel.demo.copyWith(firstName: 'Emilia');
      expect(updated.firstName, 'Emilia');
      expect(updated.lastName, 'Johnson');
      expect(updated.fullName, 'Emilia Johnson');
    });
  });
}
