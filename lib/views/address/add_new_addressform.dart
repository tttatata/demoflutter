import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/util/constans/province.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final TextEditingController cityController = TextEditingController();
    final TextEditingController zipCodeController = TextEditingController();
    final TextEditingController address1Controller = TextEditingController();
    final TextEditingController address2Controller = TextEditingController();
    String? selectedCity; // Thêm biến selectedCity
    final List<String> addressTypes = [
      'Default',
      'Địa chỉ nhà',
      'Địa chỉ cơ quan'
    ];
    String? selectedAddressType;

    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Add New Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.global), labelText: 'Quốc gia'),
                  initialValue: 'Việt Nam', readOnly: true, // Gắn giá trị mặc
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                DropdownButtonFormField<String>(
                  value: selectedCity,
                  onChanged: (newValue) {
                    // Xử lý sự kiện khi người dùng thay đổi giá trị
                    selectedCity = newValue;
                  },
                  items: ProvinceList.provinces
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  decoration: const InputDecoration(
                    labelText: 'Chọn thành phố',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  controller: zipCodeController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.code), labelText: 'Zip Code'),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  controller: address1Controller,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.buildings4),
                      labelText: 'Địa chỉ 1'),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  controller: address2Controller,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.buildings4),
                      labelText: 'Địa chỉ 2'),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: address2Controller,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.buildings4),
                            labelText: 'Địa chỉ 2'),
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        controller: address2Controller,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.buildings4),
                            labelText: 'Địa chỉ 2'),
                      ),
                    ),
                  ],
                ),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.location),
                    labelText: 'Loại địa chỉ',
                  ),
                  value: selectedAddressType,
                  onChanged: (String? newValue) {
                    // Cập nhật giá trị được chọn
                    selectedAddressType = newValue;
                  },
                  items: addressTypes
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const SizedBox(height: TSizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
