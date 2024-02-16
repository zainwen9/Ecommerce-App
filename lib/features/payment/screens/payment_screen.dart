import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';
import '/core/constants/constants.dart';
import '/core/widgets/ios_back_button.dart';
import '/core/widgets/round_button.dart';
import '/features/payment/widgets/payment_method_card.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  static const routeName = '/payment-screen';

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  late final TextEditingController _addressController;

  @override
  void initState() {
    super.initState();
    _addressController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _addressController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: Constants.defaultPadding2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // App Bar
              _buildPaymentAppBar(),

              const SizedBox(height: 20),

              // Price Info card
              _buildPriceInfoCard(),

              const SizedBox(height: 30),

              // Address
              Text(
                'Address',
                style: Theme.of(context).textTheme.bodyLarge,
              ),

              const SizedBox(height: 20),

              // Address text field
              _buildAddressTextField(),

              const SizedBox(height: 30),

              Text(
                'Choose payment method',
                style: Theme.of(context).textTheme.bodyLarge,
              ),

              const SizedBox(height: 20),

              // Payment methods
              const PaymentMethodsList(),

              const SizedBox(height: 30),

              // Payment Button
              RoundButton(
                label: 'Payment',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildPaymentAppBar() => Row(
        children: [
          IosBackButton(
            onPressed: Navigator.of(context).pop,
          ),
          const SizedBox(width: 15),
          const Text(
            'Payment',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      );

  _buildPriceInfoCard() => Container(
        padding: Constants.containerPadding,
        decoration: BoxDecoration(
          color: AppColors.blueGreyColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Column(
          children: [
            ProductInfoRow(title: 'Total Price', value: '345 \$'),
            ProductInfoRow(title: 'Discount', value: 'None'),
            ProductInfoRow(title: 'Points', value: '45 pts'),
          ],
        ),
      );

  _buildAddressTextField() => Container(
        height: 125,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.blueGreyColor,
          borderRadius: Constants.containerBorderRadius,
        ),
        child: TextField(
          controller: _addressController,
          decoration: const InputDecoration(
            hintText: 'Type your address here...',
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(12, 16, 8, 8),
          ),
          maxLines: 5,
          keyboardType: TextInputType.multiline,
        ),
      );
}

class PaymentMethodsList extends StatefulWidget {
  const PaymentMethodsList({super.key});

  @override
  State<PaymentMethodsList> createState() => _PaymentMethodsListState();
}

class _PaymentMethodsListState extends State<PaymentMethodsList> {
  String paymentMethod = 'bank';

  List<String> paymentMethods = [
    'Bank',
    'Card',
    'Paypal',
    'Google pay',
    'Stripe',
    'Ali Pay'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: paymentMethods
          .map(
            (paymentType) => Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7.5,
              ),
              child: PaymentMethodCard(
                label: paymentType,
                value: paymentType.toLowerCase(),
                groupValue: paymentMethod,
                onChanged: (value) {
                  paymentMethod = value ?? '';
                  setState(() {});
                },
              ),
            ),
          )
          .toList(),
    );
  }
}

class ProductInfoRow extends StatelessWidget {
  const ProductInfoRow({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 6.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.deepBlueColor,
            ),
          ),
        ],
      ),
    );
  }
}
