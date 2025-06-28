import 'package:booking_app/core/utils/app_routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:get_storage/get_storage.dart';

class CitySelectionSheet extends StatefulWidget {
  const CitySelectionSheet({super.key});

  @override
  State<CitySelectionSheet> createState() => _CitySelectionSheetState();
}

class _CitySelectionSheetState extends State<CitySelectionSheet> {
  final TextEditingController _controller = TextEditingController();
  final List<String> worldCities = [
    'Cairo',
    'Alexandria',
    'London',
    'Paris',
    'New York',
    'Tokyo',
    'Berlin',
    'Sydney',
    'Rome',
    'Dubai',
    'Istanbul',
    'Madrid',
    'Toronto',
    'Los Angeles',
    'Chicago',
    'Bangkok',
  ];

  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.of(context).size.width < 600;

    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Select Your City",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text.isEmpty)
                  return const Iterable<String>.empty();
                return worldCities.where(
                  (city) => city.toLowerCase().contains(
                    textEditingValue.text.toLowerCase(),
                  ),
                );
              },
              onSelected: (city) {
                selectedCity = city;
              },
              fieldViewBuilder:
                  (context, controller, focusNode, onFieldSubmitted) {
                    return TextField(
                      controller: controller,
                      focusNode: focusNode,
                      decoration: InputDecoration(
                        labelText: 'Enter city name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    );
                  },
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                if (selectedCity != null) {
                  Get.offAllNamed(AppRouts.homeView);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('You selected: $selectedCity')),
                  );
                  GetStorage().write('city', selectedCity);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please select a city')),
                  );
                }
              },
              child: const Text("Confirm"),
            ),
          ],
        ),
      ),
    );
  }
}
