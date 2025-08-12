
import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class PaymentCardScreen extends StatefulWidget {
  const PaymentCardScreen({super.key});

  @override
  _PaymentCardScreenState createState() => _PaymentCardScreenState();
}

class _PaymentCardScreenState extends State<PaymentCardScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: TAppBar(
          showBackArrow: true,
          title: Text(
            'Thanh toán với thẻ tín dụng',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Card Form'),
              SizedBox(
                height: 20,
              ),
              // CardField(
              //   onCardChanged: (card) {
              //     print(card);
              //   },
              // )
            ],
          ),
        ));
  }
}
