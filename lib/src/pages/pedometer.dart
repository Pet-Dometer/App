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
    int calories = currentPet.calories;
    int miles = currentPet.miles;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: currentPet.background, fit: BoxFit.fill),
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
                    Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Text(
                            '$calories',
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                          ),
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        const Center(
                          child: Text(
                            'Calories',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 30),
                    ProgressCircle('Steps', .5, currentPet.steps, currentPet.currSteps, currentPet.stepGoal),
                    SizedBox(width: 30),
                    Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Text(
                            '$miles',
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                          ),
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        const Center(
                          child: Text(
                            'Miles',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
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
