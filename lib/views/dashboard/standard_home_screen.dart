import 'package:flutter/material.dart';
import 'package:hasnain_project/views/widgets/custom_button.dart';

class StandardHomeScreen extends StatefulWidget {
  const StandardHomeScreen({super.key});

  @override
  State<StandardHomeScreen> createState() => _StandardHomeScreenState();
}

class _StandardHomeScreenState extends State<StandardHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mediaquery.height * 0.02,
            vertical: mediaquery.width * 0.02,
          ),
          child: Column(
            children: [
              SizedBox(height: mediaquery.height * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(
                    'Hi, Kami William',
                    style: TextStyle(
                      color: Color(0xff644983),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Image.asset(
                    'assets/images/home_pro.png',
                    // height: mediaquery.height * 0.3,
                    // width: mediaquery.width * 0.3,
                  ),
                ],
              ),
              SizedBox(height: mediaquery.height * 0.05),
              Container(
                height: mediaquery.height * 0.08,
                width: mediaquery.width * 1,
                decoration: BoxDecoration(
                  // color: Color(0xffFFFFFF),
                  color: Color(0xffE0FFD9),
                  borderRadius: BorderRadius.circular(mediaquery.height * 0.06),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: ListTile(
                  trailing: Icon(Icons.cancel_outlined),
                  title: Text(
                    'Call forwarding set.',
                    style: TextStyle(
                      color: Color(0xff644983),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: mediaquery.height * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaquery.height * 0.01,
                  vertical: mediaquery.width * 0.01,
                ),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Tap the button to deactivate/activate your AI receptionist.',
                    style: TextStyle(
                      color: Color(0xff967BB6),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: mediaquery.height * 0.03),
              Container(
                height: mediaquery.height * 0.2,
                width: mediaquery.width * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/home_img1.png'),
                  ),
                ),
              ),

              Container(
                height: mediaquery.height * 0.31,
                width: mediaquery.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: mediaquery.height * 0.02,
                            vertical: mediaquery.width * 0.03,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Usage',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: mediaquery.height * 0.02),
                              Text(
                                'Usage period:',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: mediaquery.height * 0.01),
                              Text(
                                '01-04-2025 - 01-05-2025',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: mediaquery.height * 0.03),
                              Text(
                                'Minutes used:',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: mediaquery.height * 0.01),
                              Text(
                                '2600 minutes',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: mediaquery.height * 0.03,
                            vertical: mediaquery.width * 0.04,
                          ),
                          child: Container(
                            height: mediaquery.height * 0.14,
                            width: mediaquery.width * 0.3,
                            decoration: BoxDecoration(
                              // image: DecorationImage(
                              //   image: AssetImage('assets/images/home_img2.png'),
                              // ),
                              border: Border.all(
                                color: Color(0xff967BB6),
                                width: 10,
                              ),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Center(
                              child: Text(
                                '2400 / 5000',

                                style: TextStyle(
                                  color: Color(0xff967BB6),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: mediaquery.width * 0.03,
                        vertical: mediaquery.height * 0.01,
                      ),
                      child: CustomButton(
                        textStyle: TextStyle(fontSize: 22, color: Colors.white),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Call Forwarding',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff644983),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.cancel, size: 20),
                                    ),
                                  ],
                                ),
                                content: SizedBox(
                                  height: mediaquery.height * 0.25,
                                  width: mediaquery.width,
                                  // width: mediaquery.width * 0.5,
                                  child: Column(
                                    children: [
                                      const Text(
                                        'In order to forward calls to your AI assistant, you need to complete the following process:”',
                                        style: TextStyle(
                                          color: Color(0xff5A5A5A),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: mediaquery.height * 0.02,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '1.',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            textAlign: TextAlign.start,
                                            'Click the Enable Call Forwarding button',
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: Color(0xff5A5A5A),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: mediaquery.height * 0.01,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '2.',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            textAlign: TextAlign.start,
                                            'Click the Enable Call Forwarding button',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff5A5A5A),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: mediaquery.height * 0.01,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '3.',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            textAlign: TextAlign.start,
                                            'Click the dial button to send the call forward\n command to your telephone provider.',
                                            style: TextStyle(
                                              fontSize: 10,
                                              height: 1,
                                              color: Color(0xff5A5A5A),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: mediaquery.height * 0.01,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '4.',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xff5A5A5A),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            textAlign: TextAlign.start,
                                            'You will get a confirmation message from your\n provider. And then you are all set!',
                                            style: TextStyle(
                                              height: 1,
                                              color: Color(0xff5A5A5A),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  CustomButton(
                                    textStyle: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                    ),
                                    name: 'Enable Call Forwarding',
                                  ),
                                  SizedBox(height: mediaquery.height * 0.02),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.check_box_outline_blank,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: mediaquery.width * 0.02),
                                      Text("Don't show this popup again"),
                                    ],
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        name: 'Buy more minutes',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
