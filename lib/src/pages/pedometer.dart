import 'package:app/src/data_model/pet_db.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data_model/user_db.dart';
import '../widgets/pedometer_circles.dart';

class PedometerView extends ConsumerWidget {
  const PedometerView({Key? key}) : super(key: key);

  static const routeName = '/pedometer';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PetDB petDB = ref.watch(petDBProvider);
    final String currentUserID = ref.watch(currentUserIDProvider);
    final String currentUserPetID = petDB.getAssociatedPetID(currentUserID);
    
    PetData currentPet = petDB.getPet(currentUserPetID);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: currentPet.background,
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40.0,
                    child: Text(
                      currentPet.petName,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  currentPet.type,
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                Image.asset('assets/images/healthbar.png', width: 150),
                const SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ProgressCircle('Steps', 0.25, currentPet.steps),
                    SizedBox(width: 30),
                    ProgressCircle('Calories', .5, currentPet.calories),
                    SizedBox(width: 30),
                    ProgressCircle('Miles', .8, currentPet.miles),
                    SizedBox(width: 30),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
