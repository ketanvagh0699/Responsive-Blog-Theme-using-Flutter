import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/constants.dart';
import 'package:news/responsive.dart';
import 'package:news/screens/auth/forgot_password.dart';
import 'package:news/screens/auth/otp_verify_screen.dart';
import 'package:news/screens/auth/select_role_screen.dart';
import 'package:news/screens/main/main_home_screen.dart';
import 'package:news/screens/solutions/accounting.dart';
import 'package:news/screens/solutions/leasing.dart';
import 'package:news/screens/solutions/maintenance.dart';
import 'dart:io' show Platform;

import 'package:news/screens/solutions/property_management.dart';
import 'package:news/screens/solutions/security.dart';
import 'package:news/screens/solutions/task.dart';
import 'package:news/screens/solutions/tenants.dart';
import 'package:news/screens/solutions/vendors.dart';
import 'package:public_ip_address/public_ip_address.dart';

import '../../controllers/auth_controller.dart';
import '../contact/contact_screen.dart';
import '../main/components/app_button_widget.dart';
import 'customer_support.dart';
import 'erp.dart';

class SolutionsScreen extends StatefulWidget {
  const SolutionsScreen({Key? key}) : super(key: key);

  @override
  State<SolutionsScreen> createState() => _SolutionsScreenState();
}

class _SolutionsScreenState extends State<SolutionsScreen>
    with TickerProviderStateMixin {
  AuthController authController = Get.find<AuthController>();
  var _formKey = GlobalKey<FormState>();
  List<String> selected = [];
  List<String> typesItemsList = [
    'Property Management',
    'Leasing',
    'Tenants',
    'Maintenance',
    'Accounting',
    'ERP',
    'Tasks',
    'Vendors',
    'Security',
    'Customer Support',
  ];
  TabController? tabController;

  List<TabDataList> tabsList = [
    TabDataList(
      name: 'Property Management',
      tabViewWidget: PropertyManagementScreen(),
    ),
    TabDataList(
        name: 'Leasing',
        tabViewWidget: Center(
          child: Text(
            'Leasing',
            style: TextStyle(
              fontFamily: "Roboto",
              letterSpacing: .9,
              fontWeight: FontWeight.normal,
              fontSize: 17.0,
            ),
          ),
        )),
    TabDataList(
        name: 'Tenants',
        tabViewWidget: Center(
          child: Text(
            'Tenants',
            style: TextStyle(
              fontFamily: "Roboto",
              letterSpacing: .9,
              fontWeight: FontWeight.normal,
              fontSize: 17.0,
            ),
          ),
        )),
    TabDataList(
        name: 'Maintenance',
        tabViewWidget: Center(
          child: Text(
            'Maintenance',
            style: TextStyle(
              fontFamily: "Roboto",
              letterSpacing: .9,
              fontWeight: FontWeight.normal,
              fontSize: 17.0,
            ),
          ),
        )),
    TabDataList(
        name: 'Accounting',
        tabViewWidget: Center(
          child: Text(
            'Accounting',
            style: TextStyle(
              fontFamily: "Roboto",
              letterSpacing: .9,
              fontWeight: FontWeight.normal,
              fontSize: 17.0,
            ),
          ),
        )),
    TabDataList(
        name: 'ERP',
        tabViewWidget: Center(
          child: Text(
            'ERP',
            style: TextStyle(
              fontFamily: "Roboto",
              letterSpacing: .9,
              fontWeight: FontWeight.normal,
              fontSize: 17.0,
            ),
          ),
        )),
    TabDataList(
        name: 'Tasks',
        tabViewWidget: Center(
          child: Text(
            'Tasks',
            style: TextStyle(
              fontFamily: "Roboto",
              letterSpacing: .9,
              fontWeight: FontWeight.normal,
              fontSize: 17.0,
            ),
          ),
        )),
    TabDataList(
        name: 'Vendors',
        tabViewWidget: Center(
          child: Text(
            'Vendors',
            style: TextStyle(
              fontFamily: "Roboto",
              letterSpacing: .9,
              fontWeight: FontWeight.normal,
              fontSize: 17.0,
            ),
          ),
        )),
    TabDataList(
        name: 'Security',
        tabViewWidget: Center(
          child: Text(
            'Security',
            style: TextStyle(
              fontFamily: "Roboto",
              letterSpacing: .9,
              fontWeight: FontWeight.normal,
              fontSize: 17.0,
            ),
          ),
        )),
    TabDataList(
        name: 'Customer Support',
        tabViewWidget: Center(
          child: Text(
            'Customer Support',
            style: TextStyle(
              fontFamily: "Roboto",
              letterSpacing: .9,
              fontWeight: FontWeight.normal,
              fontSize: 17.0,
            ),
          ),
        )),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectDataItem = 'Property Management';
    tabController = TabController(length: tabsList.length, vsync: this);
  }

  String? selectDataItem;

  Widget getTabWidget() {
    Widget? getWidget;
    switch (selectDataItem) {
      case 'Property Management':
        getWidget = PropertyManagementScreen();
        break;
      case 'Leasing':
        getWidget = LeasingScreen();
        break;
      case 'Tenants':
        getWidget = TenantsScreen();
        break;
      case 'Maintenance':
        getWidget = MaintenanceScreen();
        break;
      case 'Accounting':
        getWidget = AccountingScreen();
        break;
      case 'ERP':
        getWidget = ERPScreen();
        break;
      case 'Tasks':
        getWidget = TaskScreen();
        break;
      case 'Vendors':
        getWidget = VendorsScreen();
        break;
      case 'Security':
        getWidget = SecurityScreen();
        break;
      case 'Customer Support':
        getWidget = CustomerSupportScreen();
        break;
      default:
        getWidget = PropertyManagementScreen();
    }
    // setState(() {});
    return getWidget;
  }

  String ipData = '';

  @override
  Widget build(BuildContext context) {
    return MainHomeScreen(
      firstSection: Obx(
        () => authController.isSolutionTabFormSubmit.value
            ? Text("")
            : Responsive(
                mobile: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Manage your property the easy and simple way!',
                      style: TextStyle(
                        fontSize: Responsive.isDesktop(context) ? 55.0 : 35.0,
                        fontWeight: FontWeight.w700,
                        // color: appPrimaryDark,
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        height: 1.1,
                      ),
                      textAlign: TextAlign.left,
                      // textAlign: Responsive.isDesktop(context)
                      //     ? TextAlign.left
                      //     : TextAlign.center,
                      maxLines: 3,
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet at sit.',
                      maxLines: 3,
                      textAlign: TextAlign.left,
                      // textAlign: Responsive.isDesktop(context)
                      //     ? TextAlign.left
                      //     : TextAlign.center,
                      style: TextStyle(
                        fontSize: Responsive.isDesktop(context) ? 18.0 : 16.5,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        height: 1.7,
                        // letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(
                      height: kDefaultPadding +
                          (Responsive.isDesktop(context) ? 25 : 5.0),
                    ),
                    Text(
                      "Follow us on social media",
                      style: TextStyle(
                        fontSize: Responsive.isDesktop(context) ? 27.0 : 21.5,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        height: 1.7,
                        // letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          color: Theme.of(context).buttonColor,
                          borderRadius: BorderRadius.circular(
                            25.0,
                          )),
                      width: Get.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormFieldWidget(
                            title: "Name",
                            textEditingController: TextEditingController(),
                            hintText: "Enter your name",
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          TextFormFieldWidget(
                            title: "Email Address",
                            textEditingController: TextEditingController(),
                            hintText: "Enter your email",
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          TextFormFieldWidget(
                            title: "Phone",
                            textEditingController: TextEditingController(),
                            hintText: "(000) 000 000",
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          TextFormFieldWidget(
                            title: "Company",
                            textEditingController: TextEditingController(),
                            hintText: "Company name",
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          TextFormFieldWidget(
                            title: "Message",
                            textEditingController: TextEditingController(),
                            hintText: "Enter message",
                            maxLength: 6,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          AppButtonWidget(
                            text: "Send Message",
                            textColor: whiteColor,
                            onPressed: () {},
                            fontSize: 16.0,
                            backgroundColor: appPrimaryColor,
                            borderSideColor: appPrimaryColor,
                            foregroundColor: appPrimaryColor,
                            width: Get.width,
                            padding: EdgeInsets.symmetric(
                                horizontal: 21.0, vertical: 20.0),
                          ),
                          SizedBox(
                            height: 13.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                desktop: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Manage your property the easy and simple way!',
                              style: TextStyle(
                                fontSize:
                                    Responsive.isDesktop(context) ? 55.0 : 31.0,
                                fontWeight: FontWeight.w800,
                                color: white,
                                // color: Theme.of(context)
                                //     .textTheme
                                //     .displayLarge!
                                //     .color,
                                height: 1.1,
                              ),
                              textAlign: TextAlign.left,
                              // textAlign: Responsive.isDesktop(context)
                              //     ? TextAlign.left
                              //     : TextAlign.center,
                              maxLines: 3,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(
                            // color: Theme.of(context).buttonColor,
                            // borderRadius: BorderRadius.circular(
                            //   25.0,
                            // ),
                            ),
                        width: Get.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Form(
                              key: _formKey,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        TextFormFieldWidget(
                                          title: "Name",
                                          textFieldColor: white,
                                          textEditingController:
                                              authController.txtCNameController,
                                          hintText: "Enter your name",
                                          validator: (val) => authController
                                              .validateCheckEmpty(val, 'Name'),
                                        ),
                                        SizedBox(
                                          height: 15.0,
                                        ),
                                        TextFormFieldWidget(
                                          title: "Work Email",
                                          textFieldColor: white,
                                          textEditingController: authController
                                              .txtCEmailController,
                                          hintText: "Enter your email",
                                          validator: (val) =>
                                              authController.validateCheckEmpty(
                                                  val, 'Work email'),
                                        ),
                                        SizedBox(
                                          height: 15.0,
                                        ),
                                        PhoneWidget(
                                          validator: (val) => authController
                                              .validateCheckEmpty(val, 'Phone'),
                                        ),
                                        SizedBox(
                                          height: 15.0,
                                        ),
                                        Row(
                                          children: [
                                            Flexible(
                                              child: TextFormFieldWidget(
                                                title: "Company",
                                                textFieldColor: white,
                                                textEditingController:
                                                    authController
                                                        .txtCCompanyController,
                                                hintText: "Enter company name ",
                                                validator: (val) =>
                                                    authController
                                                        .validateCheckEmpty(val,
                                                            'Company name'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40.0,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Which features are you interested in?',
                                          style: TextStyle(
                                            color: white,
                                            // color: Theme.of(context)
                                            //     .textTheme
                                            //     .displayLarge!
                                            //     .color,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),

                                        SizedBox(
                                          height: 15,
                                        ),
                                        Obx(
                                          () => CustomMultiselectDropDown(
                                            listOFStrings: typesItemsList,
                                            listOFSelectedItem: authController
                                                .featureList.value,
                                            selectedList: (p0) {
                                              setState(() {
                                                selected = p0;
                                                authController
                                                    .featureList.value = p0;
                                              });
                                            },
                                            hintText: "Select feature",
                                          ),
                                        ),
                                        // Theme(
                                        //   data: Theme.of(context).copyWith(
                                        //     canvasColor:
                                        //         Theme.of(context).buttonColor,
                                        //     unselectedWidgetColor:
                                        //         Theme.of(context)
                                        //             .textTheme
                                        //             .displayLarge!
                                        //             .color,
                                        //   ),
                                        //   child: DropDownMultiSelect(
                                        //     selected_values_style: TextStyle(
                                        //       color: Theme.of(context)
                                        //           .textTheme
                                        //           .displayLarge!
                                        //           .color,
                                        //     ),
                                        //     validator: (val) {
                                        //       if (val == null) {
                                        //         return "Feature is required";
                                        //       } else {
                                        //         return '';
                                        //       }
                                        //       // log("message drop -> ${val == null}");
                                        //       // return "null";
                                        //     },
                                        //     onChanged: (List<String> x) {
                                        //       setState(() {
                                        //         selected = x;
                                        //         authController.featureList = x;
                                        //       });
                                        //     },
                                        //     options: typesItemsList,
                                        //     selectedValues: selected,
                                        //     hint: Text(
                                        //       "Select Features",
                                        //       style: TextStyle(
                                        //         color: Theme.of(context)
                                        //             .textTheme
                                        //             .displayLarge!
                                        //             .color,
                                        //       ),
                                        //     ),
                                        //     hintStyle: TextStyle(
                                        //       color: Theme.of(context)
                                        //           .textTheme
                                        //           .displayLarge!
                                        //           .color,
                                        //     ),
                                        //     decoration: InputDecoration(
                                        //       contentPadding:
                                        //           EdgeInsets.symmetric(
                                        //               horizontal: 20.0,
                                        //               vertical: 20.0),
                                        //       hintStyle: TextStyle(
                                        //         color: Theme.of(context)
                                        //             .textTheme
                                        //             .displayLarge!
                                        //             .color!
                                        //             .withOpacity(.6),
                                        //       ),
                                        //       border: new OutlineInputBorder(
                                        //         borderRadius:
                                        //             new BorderRadius.circular(
                                        //                 5.0),
                                        //         borderSide: new BorderSide(
                                        //           color: Theme.of(context)
                                        //               .textTheme
                                        //               .displayLarge!
                                        //               .color!,
                                        //         ),
                                        //       ),
                                        //       enabledBorder:
                                        //           new OutlineInputBorder(
                                        //         borderRadius:
                                        //             new BorderRadius.circular(
                                        //                 5.0),
                                        //         borderSide: new BorderSide(
                                        //           color: Theme.of(context)
                                        //               .textTheme
                                        //               .displayLarge!
                                        //               .color!
                                        //               .withOpacity(.7),
                                        //         ),
                                        //       ),
                                        //       focusedBorder:
                                        //           new OutlineInputBorder(
                                        //         borderRadius:
                                        //             new BorderRadius.circular(
                                        //                 5.0),
                                        //         borderSide: new BorderSide(
                                        //           color: Theme.of(context)
                                        //               .textTheme
                                        //               .displayLarge!
                                        //               .color!,
                                        //         ),
                                        //       ),
                                        //     ),
                                        //     childBuilder: (selectedValues) {
                                        //       return Padding(
                                        //         padding:
                                        //             const EdgeInsets.symmetric(
                                        //                 horizontal: 14.0),
                                        //         child: Text(
                                        //           '${selectedValues.join(', ')}',
                                        //           style: TextStyle(
                                        //             color: Theme.of(context)
                                        //                 .textTheme
                                        //                 .displayLarge!
                                        //                 .color,
                                        //           ),
                                        //           maxLines: 2,
                                        //           overflow: TextOverflow.ellipsis,
                                        //         ),
                                        //       );
                                        //     },
                                        //   ),
                                        // ),

                                        SizedBox(
                                          height: 15.0,
                                        ),
                                        TextFormFieldWidget(
                                          title: "Message",
                                          textFieldColor: white,
                                          textEditingController: authController
                                              .txtCMessageController,
                                          hintText: "Enter message",
                                          maxLength: 6,
                                          validator: (val) =>
                                              authController.validateCheckEmpty(
                                                  val, 'Message'),
                                        ),
                                        SizedBox(
                                          height: 30.0,
                                        ),
                                        AppButtonWidget(
                                          text: "Send Message",
                                          textColor: whiteColor,
                                          onPressed: () {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              log("message success --> ${authController.txtCNameController.text}\n"
                                                  "${authController.txtCEmailController.text}\n"
                                                  "${authController.txtCCompanyController.text}\n"
                                                  "${authController.txtCMessageController.text}\n"
                                                  "${authController.cCountryCode}\n"
                                                  "${authController.txtCPhoneController.text}\n"
                                                  "${authController.featureList}");
                                              authController.userGetInTouchUs(
                                                  context: context);
                                            }
                                          },
                                          fontSize: 16.0,
                                          backgroundColor: appPrimaryColor,
                                          borderSideColor: appPrimaryColor,
                                          foregroundColor: appPrimaryColor,
                                          // width: 200.0,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 21.0, vertical: 20.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: kMaxWidth),
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            // TextButton(
            //   onPressed: () async {
            // log("message check default platform ===> ${defaultTargetPlatform}");

            // try {
            //   /// Initialize Ip Address
            //   var ipAddress = IpAddress(type: RequestType.text);

            //   /// Get the IpAddress based on requestType.
            //   ipData = await ipAddress.getIp();
            //   // String os = Platform.operatingSystem ;
            //   print(
            //       '${ipData.toString()} ===>  ${defaultTargetPlatform.index}');
            //   setState(() {});
            // } on IpAddressException catch (exception) {
            //   /// Handle the exception.
            //   print(exception.message);
            // }
            //   },
            //   child: Text("Get info"),
            // ),
            // Text('${defaultTargetPlatform.name} ===> ${ipdata}'),
            Container(
              height: AppBar().preferredSize.height - 15,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...tabsList
                      .map((e) => InkWell(
                            onTap: () {
                              setState(() {
                                selectDataItem = e.name.toString();
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                  color: selectDataItem == e.name.toString()
                                      ? Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .color!
                                      : Colors.transparent,
                                  width: 1.8,
                                ),
                              )),
                              padding: EdgeInsets.symmetric(
                                  vertical: Responsive.isDesktop(context)
                                      ? 10.0
                                      : 8.0,
                                  horizontal: Responsive.isDesktop(context)
                                      ? 25.0
                                      : 11.0),
                              child: Text(
                                e.name.toString(),
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .color,
                                  fontFamily: "Roboto",
                                  letterSpacing: .8,
                                  fontWeight:
                                      selectDataItem == e.name.toString()
                                          ? FontWeight.w800
                                          : FontWeight.normal,
                                  fontSize: Responsive.isDesktop(context)
                                      ? 17.0
                                      : 15.0,
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            getTabWidget(),

            // Container(
            //   width: double.infinity,
            //   child: TabBar(
            //     isScrollable: true,
            //     unselectedLabelStyle: TextStyle(
            //       // color: Theme.of(context).textTheme.displayLarge!.color,
            //       fontFamily: "Roboto",
            //       letterSpacing: .8,
            //       fontWeight: FontWeight.normal,
            //       fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
            //     ),
            //     labelStyle: TextStyle(
            //       // color: Theme.of(context).textTheme.displayLarge!.color,
            //       fontFamily: "Roboto",
            //       letterSpacing: .8,
            //       fontWeight: FontWeight.w800,
            //       fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
            //     ),
            //     labelPadding: EdgeInsets.symmetric(
            //         vertical: Responsive.isDesktop(context) ? 10.0 : 8.0,
            //         horizontal: Responsive.isDesktop(context) ? 25.0 : 11.0),
            //     indicatorColor: Theme.of(context).textTheme.displayLarge!.color,
            //     controller: tabController,
            //     tabs: tabsList
            //         .map((e) => Text(
            //               e.name.toString(),
            //               style: TextStyle(
            //                 color:
            //                     Theme.of(context).textTheme.displayLarge!.color,
            //                 fontFamily: "Roboto",
            //                 letterSpacing: .9,
            //                 // fontWeight: FontWeight.w800,
            //                 // fontSize:
            //                 //     Responsive.isDesktop(context) ? 17.0 : 14.0,
            //               ),
            //             ))
            //         .toList(),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Container(
            //   height: Get.height,
            //   child: TabBarView(
            //     physics: NeverScrollableScrollPhysics(),
            //     controller: tabController,
            //     children: tabsList.map((e) => e.tabViewWidget!).toList(),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class TabDataList {
  String? name;
  Widget? tabViewWidget;
  TabDataList({this.name, this.tabViewWidget});
}
