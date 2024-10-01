import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'Sanctuaire.jpg',
                height: 600,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title and reviews
                    const Text(
                      'The Sanctuary Of Truth',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: const [
                        Icon(Icons.star, color: Colors.orange),
                        Text(
                          '4.5 ',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          '(4,625 Reviews)',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                        Text(
                          ' | 60K+ Booked',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    FeatureRow(
                        icon: Icons.access_time, text: 'Available Today'),
                    FeatureRow(
                        icon: Icons.flash_on, text: 'Instant Confirmation'),
                    FeatureRow(
                        icon: Icons.money,
                        text:
                            'No Cancellation/Free Cancellation - 24 Hours Notice'),
                    FeatureRow(
                        icon: Icons.local_print_shop,
                        text: 'Show Mobile Or Printed Voucher'),
                    FeatureRow(
                        icon: Icons.calendar_today,
                        text: 'Open Date Ticket/Fixed Date Ticket'),
                    FeatureRow(
                        icon: Icons.file_copy, text: 'Collect Physical Ticket'),
                    FeatureRow(
                        icon: Icons.directions_car,
                        text: 'Meet Up At Location'),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child:
                    Text('ADD TO CART', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: Size(150, 150),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'BOOK NOW',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff018868),
                  minimumSize: Size(150, 150),
                ),
              )
            ],
          ),
        )));
  }
}

class FeatureRow extends StatelessWidget {
  final IconData icon;
  final String text;

  FeatureRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.black),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
