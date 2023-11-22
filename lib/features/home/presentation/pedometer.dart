import 'package:app/features/error.dart';
import 'package:app/features/loading.dart';
import 'package:app/features/pet/domain/pet_collection.dart';
import 'package:app/features/pet/domain/pet_db.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../all_data_provider.dart';
import '../../pedometer/presentation/pedometer_circles.dart';

class PedometerView extends ConsumerWidget {
  const PedometerView({Key? key}) : super(key: key);

  static const routeName = '/pedometer';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AllData> asyncAllData = ref.watch(allDataProvider);
    return asyncAllData.when(
        data: (allData) => _build(
            context: context,
            currentUserID: allData.currentUserID,
            pets: allData.pets),
        loading: () => const PedLoading(),
        error: (error, st) => PedError(error.toString(), st.toString()));
  }

  Widget _build({required BuildContext context,
  required String currentUserID,
  required List<Pet> pets}) {
    print("working");

    Pet currentPet = PetCollection(pets).getPet(currentUserID);
    int calories = currentPet.getCalories();
    int miles = currentPet.getMiles();
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'), fit: BoxFit.fill),
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
                  Image.asset('assets/images/dog2.png', width: 300),
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
                    const SizedBox(width: 30),
                    ProgressCircle('Steps', .5, currentPet.steps, currentPet.currSteps, currentPet.stepGoal),
                    const SizedBox(width: 30),
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
                    const SizedBox(width: 30),
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
