import 'package:app/features/pet/domain/pet_db.dart';

class PetCollection {
  PetCollection(pets) : _pets = pets;

  final List<Pet> _pets;

  Pet getPet(String petID) {
    return _pets.firstWhere((petData) => petData.id == petID);
  }

  List<String> getPetIDs() {
    return _pets.map((data) => data.id).toList();
  }

  String getAssociatedPetID(String userID) {
    return getPetIDs()
        .where((petID) => _userIsAssociated(petID, userID))
        .toString()
        .replaceAll("(", "")
        .replaceAll(")", "");
  }

  bool _userIsAssociated(String petID, String userID) {
    Pet data = getPet(petID);
    return data.ownerID == userID;
  }
}