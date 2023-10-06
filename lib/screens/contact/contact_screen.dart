import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:multiselect/multiselect.dart';
import 'package:news/constants.dart';
import 'package:news/controllers/auth_controller.dart';

import '../../controllers/theme_controller.dart';
import '../../responsive.dart';
import '../about_us/about_us.dart';
import '../main/components/app_button_widget.dart';
import '../main/main_home_screen.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  AuthController authController = Get.find<AuthController>();
  var _formKey = GlobalKey<FormState>();
  bool isDK = false;
  String selectType = 'Property Management';

  List<SimpleDataModel> dList = [
    SimpleDataModel(
      title: "Support",
      subTitle: "support@software.com",
    ),
    SimpleDataModel(
      title: "Media & Press",
      subTitle: "press@software.com",
    ),
    SimpleDataModel(
      title: "Help Center",
      subTitle: "Go to Help Center",
    ),
  ];

  List<String> infoList = [
    'Does Software offers discounts for non-profits? ',
    'Can I pay to have more tracking events on my actual plan?',
    'How many users can I invite to my Software account?',
    'Do you offer a mobile app to use Software on the go?',
    'Can I schedule a Software demo to test the platform out?',
    'Do you offer a free trial to test Software out before committing?',
  ];

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

  @override
  Widget build(BuildContext context) {
    return MainHomeScreen(
      firstSection: Responsive(
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
              height:
                  kDefaultPadding + (Responsive.isDesktop(context) ? 25 : 5.0),
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
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth - 900),
              child: Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: SocialButtonIconWidget(
                      isHover: isDK,
                      icon: FontAwesomeIcons.facebookF,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SocialButtonIconWidget(
                      isHover: isDK,
                      icon: FontAwesomeIcons.twitter,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SocialButtonIconWidget(
                      isHover: isDK,
                      icon: FontAwesomeIcons.instagram,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SocialButtonIconWidget(
                      isHover: isDK,
                      icon: FontAwesomeIcons.linkedinIn,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SocialButtonIconWidget(
                      isHover: isDK,
                      icon: FontAwesomeIcons.youtube,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SocialButtonIconWidget(
                      isHover: isDK,
                      icon: FontAwesomeIcons.whatsapp,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SocialButtonIconWidget(
                      isHover: isDK,
                      icon: FontAwesomeIcons.telegram,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 21.0, vertical: 20.0),
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
                        fontSize: Responsive.isDesktop(context) ? 55.0 : 31.0,
                        fontWeight: FontWeight.w800,
                        // color: appPrimaryDark,
                        color: white,
                        // color: Theme.of(context).textTheme.displayLarge!.color,
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
                    Text(
                      "Get In Touch",
                      style: TextStyle(
                        fontSize: Responsive.isDesktop(context) ? 35.0 : 24.0,
                        fontWeight: FontWeight.w800,
                        // color: appPrimaryDark,
                        color: whiteColor,
                        // color: Theme.of(context).textTheme.displayLarge!.color,
                        height: 1.1,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 20,
                    ),
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
                                  textEditingController:
                                      authController.txtCEmailController,
                                  hintText: "Enter your email",
                                  validator: (val) => authController
                                      .validateCheckEmpty(val, 'Work email'),
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
                                        textEditingController: authController
                                            .txtCCompanyController,
                                        hintText: "Enter company name ",
                                        validator: (val) =>
                                            authController.validateCheckEmpty(
                                                val, 'Company name'),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                    listOFSelectedItem:
                                        authController.featureList.value,
                                    selectedList: (p0) {
                                      setState(() {
                                        selected = p0;
                                        authController.featureList.value = p0;
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
                                  textEditingController:
                                      authController.txtCMessageController,
                                  hintText: "Enter message",
                                  maxLength: 6,
                                  validator: (val) => authController
                                      .validateCheckEmpty(val, 'Message'),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                AppButtonWidget(
                                  text: "Send Message",
                                  textColor: whiteColor,
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      log("message success --> ${authController.txtCNameController.text}\n"
                                          "${authController.txtCEmailController.text}\n"
                                          "${authController.txtCCompanyController.text}\n"
                                          "${authController.txtCMessageController.text}\n"
                                          "${authController.cCountryCode}\n"
                                          "${authController.txtCPhoneController.text}\n"
                                          "${authController.featureList}");
                                      // authController.txtCNameController.clear();
                                      // authController.txtCEmailController
                                      //     .clear();
                                      // authController.txtCMessageController
                                      //     .clear();
                                      // authController.cCountryCode = null;
                                      // authController.txtCCompanyController
                                      //     .clear();
                                      // authController.txtCPhoneController
                                      //     .clear();
                                      // authController.featureList.clear();
                                      setState(() {});
                                      authController.userContactUs(
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
      child: Container(
        constraints: BoxConstraints(maxWidth: kMaxWidth),
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            //// new widget
            // Responsive(
            //   mobile: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         'Manage your property the easy and simple way!',
            //         style: TextStyle(
            //           fontSize: Responsive.isDesktop(context) ? 55.0 : 35.0,
            //           fontWeight: FontWeight.w700,
            //           // color: appPrimaryDark,
            //           color: Theme.of(context).textTheme.displayLarge!.color,
            //           height: 1.1,
            //         ),
            //         textAlign: TextAlign.left,
            //         // textAlign: Responsive.isDesktop(context)
            //         //     ? TextAlign.left
            //         //     : TextAlign.center,
            //         maxLines: 3,
            //       ),
            //       SizedBox(
            //         height: kDefaultPadding,
            //       ),
            //       Text(
            //         'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet at sit.',
            //         maxLines: 3,
            //         textAlign: TextAlign.left,
            //         // textAlign: Responsive.isDesktop(context)
            //         //     ? TextAlign.left
            //         //     : TextAlign.center,
            //         style: TextStyle(
            //           fontSize: Responsive.isDesktop(context) ? 18.0 : 16.5,
            //           fontWeight: FontWeight.w500,
            //           color: Theme.of(context).textTheme.displayLarge!.color,
            //           height: 1.7,
            //           // letterSpacing: 0.5,
            //         ),
            //       ),
            //       SizedBox(
            //         height: kDefaultPadding +
            //             (Responsive.isDesktop(context) ? 25 : 5.0),
            //       ),
            //       Text(
            //         "Follow us on social media",
            //         style: TextStyle(
            //           fontSize: Responsive.isDesktop(context) ? 27.0 : 21.5,
            //           fontWeight: FontWeight.w700,
            //           color: Theme.of(context).textTheme.displayLarge!.color,
            //           height: 1.7,
            //           // letterSpacing: 0.5,
            //         ),
            //       ),
            //       SizedBox(
            //         height: 10.0,
            //       ),
            //       Container(
            //         constraints: BoxConstraints(maxWidth: kMaxWidth - 900),
            //         child: Wrap(
            //           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 0.0),
            //               child: SocialButtonIconWidget(
            //                 isHover: isDK,
            //                 icon: FontAwesomeIcons.facebookF,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 20.0),
            //               child: SocialButtonIconWidget(
            //                 isHover: isDK,
            //                 icon: FontAwesomeIcons.twitter,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 20.0),
            //               child: SocialButtonIconWidget(
            //                 isHover: isDK,
            //                 icon: FontAwesomeIcons.instagram,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 20.0),
            //               child: SocialButtonIconWidget(
            //                 isHover: isDK,
            //                 icon: FontAwesomeIcons.linkedinIn,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 20.0),
            //               child: SocialButtonIconWidget(
            //                 isHover: isDK,
            //                 icon: FontAwesomeIcons.youtube,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 20.0),
            //               child: SocialButtonIconWidget(
            //                 isHover: isDK,
            //                 icon: FontAwesomeIcons.whatsapp,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 20.0),
            //               child: SocialButtonIconWidget(
            //                 isHover: isDK,
            //                 icon: FontAwesomeIcons.telegram,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         height: 15.0,
            //       ),
            //       Container(
            //         padding: EdgeInsets.all(20.0),
            //         decoration: BoxDecoration(
            //             color: Theme.of(context).buttonColor,
            //             borderRadius: BorderRadius.circular(
            //               25.0,
            //             )),
            //         width: Get.width,
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             TextFormFieldWidget(
            //               title: "Name",
            //               textEditingController: TextEditingController(),
            //               hintText: "Enter your name",
            //             ),
            //             SizedBox(
            //               height: 25.0,
            //             ),
            //             TextFormFieldWidget(
            //               title: "Email Address",
            //               textEditingController: TextEditingController(),
            //               hintText: "Enter your email",
            //             ),
            //             SizedBox(
            //               height: 25.0,
            //             ),
            //             TextFormFieldWidget(
            //               title: "Phone",
            //               textEditingController: TextEditingController(),
            //               hintText: "(000) 000 000",
            //             ),
            //             SizedBox(
            //               height: 25.0,
            //             ),
            //             TextFormFieldWidget(
            //               title: "Company",
            //               textEditingController: TextEditingController(),
            //               hintText: "Company name",
            //             ),
            //             SizedBox(
            //               height: 25.0,
            //             ),
            //             TextFormFieldWidget(
            //               title: "Message",
            //               textEditingController: TextEditingController(),
            //               hintText: "Enter message",
            //               maxLength: 6,
            //             ),
            //             SizedBox(
            //               height: 30.0,
            //             ),
            //             AppButtonWidget(
            //               text: "Send Message",
            //               textColor: whiteColor,
            //               onPressed: () {},
            //               fontSize: 16.0,
            //               backgroundColor: appPrimaryColor,
            //               borderSideColor: appPrimaryColor,
            //               foregroundColor: appPrimaryColor,
            //               width: Get.width,
            //               padding: EdgeInsets.symmetric(
            //                   horizontal: 21.0, vertical: 20.0),
            //             ),
            //             SizedBox(
            //               height: 13.0,
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            //   desktop: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Expanded(
            //         child: Container(
            //           child: Column(
            //             mainAxisSize: MainAxisSize.min,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               Text(
            //                 'Manage your property the easy and simple way!',
            //                 style: TextStyle(
            //                   fontSize:
            //                       Responsive.isDesktop(context) ? 55.0 : 31.0,
            //                   fontWeight: FontWeight.w800,
            //                   // color: appPrimaryDark,
            //                   color: Theme.of(context)
            //                       .textTheme
            //                       .displayLarge!
            //                       .color,
            //                   height: 1.1,
            //                 ),
            //                 textAlign: TextAlign.left,
            //                 // textAlign: Responsive.isDesktop(context)
            //                 //     ? TextAlign.left
            //                 //     : TextAlign.center,
            //                 maxLines: 3,
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         width: 10.0,
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.all(0.0),
            //           decoration: BoxDecoration(
            //               // color: Theme.of(context).buttonColor,
            //               // borderRadius: BorderRadius.circular(
            //               //   25.0,
            //               // ),
            //               ),
            //           width: Get.width,
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Form(
            //                 key: _formKey,
            //                 child: Row(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Expanded(
            //                       child: Column(
            //                         children: [
            //                           TextFormFieldWidget(
            //                             title: "Name",
            //                             textEditingController:
            //                                 authController.txtCNameController,
            //                             hintText: "Enter your name",
            //                             validator: (val) => authController
            //                                 .validateCheckEmpty(val, 'Name'),
            //                           ),
            //                           SizedBox(
            //                             height: 15.0,
            //                           ),
            //                           TextFormFieldWidget(
            //                             title: "Work Email",
            //                             textEditingController:
            //                                 authController.txtCEmailController,
            //                             hintText: "Enter your email",
            //                             validator: (val) =>
            //                                 authController.validateCheckEmpty(
            //                                     val, 'Work email'),
            //                           ),
            //                           SizedBox(
            //                             height: 15.0,
            //                           ),
            //                           PhoneWidget(
            //                             validator: (val) => authController
            //                                 .validateCheckEmpty(val, 'Phone'),
            //                           ),
            //                           SizedBox(
            //                             height: 15.0,
            //                           ),
            //                           Row(
            //                             children: [
            //                               Flexible(
            //                                 child: TextFormFieldWidget(
            //                                   title: "Company",
            //                                   textEditingController:
            //                                       authController
            //                                           .txtCCompanyController,
            //                                   hintText: "Enter company name ",
            //                                   validator: (val) => authController
            //                                       .validateCheckEmpty(
            //                                           val, 'Company name'),
            //                                 ),
            //                               ),
            //                             ],
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       width: 40.0,
            //                     ),
            //                     Expanded(
            //                       child: Column(
            //                         children: [
            //                           Text(
            //                             'Which features are you interested in?',
            //                             style: TextStyle(
            //                               color: Theme.of(context)
            //                                   .textTheme
            //                                   .displayLarge!
            //                                   .color,
            //                               fontSize: 18.0,
            //                               fontWeight: FontWeight.w600,
            //                             ),
            //                           ),

            //                           SizedBox(
            //                             height: 15,
            //                           ),
            //                           CustomMultiselectDropDown(
            //                             listOFStrings: typesItemsList,
            //                             selectedList: (p0) {
            //                               setState(() {
            //                                 selected = p0;
            //                                 authController.featureList = p0;
            //                               });
            //                             },
            //                             hintText: "Select feature",
            //                           ),
            //                           // Theme(
            //                           //   data: Theme.of(context).copyWith(
            //                           //     canvasColor:
            //                           //         Theme.of(context).buttonColor,
            //                           //     unselectedWidgetColor:
            //                           //         Theme.of(context)
            //                           //             .textTheme
            //                           //             .displayLarge!
            //                           //             .color,
            //                           //   ),
            //                           //   child: DropDownMultiSelect(
            //                           //     selected_values_style: TextStyle(
            //                           //       color: Theme.of(context)
            //                           //           .textTheme
            //                           //           .displayLarge!
            //                           //           .color,
            //                           //     ),
            //                           //     validator: (val) {
            //                           //       if (val == null) {
            //                           //         return "Feature is required";
            //                           //       } else {
            //                           //         return '';
            //                           //       }
            //                           //       // log("message drop -> ${val == null}");
            //                           //       // return "null";
            //                           //     },
            //                           //     onChanged: (List<String> x) {
            //                           //       setState(() {
            //                           //         selected = x;
            //                           //         authController.featureList = x;
            //                           //       });
            //                           //     },
            //                           //     options: typesItemsList,
            //                           //     selectedValues: selected,
            //                           //     hint: Text(
            //                           //       "Select Features",
            //                           //       style: TextStyle(
            //                           //         color: Theme.of(context)
            //                           //             .textTheme
            //                           //             .displayLarge!
            //                           //             .color,
            //                           //       ),
            //                           //     ),
            //                           //     hintStyle: TextStyle(
            //                           //       color: Theme.of(context)
            //                           //           .textTheme
            //                           //           .displayLarge!
            //                           //           .color,
            //                           //     ),
            //                           //     decoration: InputDecoration(
            //                           //       contentPadding:
            //                           //           EdgeInsets.symmetric(
            //                           //               horizontal: 20.0,
            //                           //               vertical: 20.0),
            //                           //       hintStyle: TextStyle(
            //                           //         color: Theme.of(context)
            //                           //             .textTheme
            //                           //             .displayLarge!
            //                           //             .color!
            //                           //             .withOpacity(.6),
            //                           //       ),
            //                           //       border: new OutlineInputBorder(
            //                           //         borderRadius:
            //                           //             new BorderRadius.circular(
            //                           //                 5.0),
            //                           //         borderSide: new BorderSide(
            //                           //           color: Theme.of(context)
            //                           //               .textTheme
            //                           //               .displayLarge!
            //                           //               .color!,
            //                           //         ),
            //                           //       ),
            //                           //       enabledBorder:
            //                           //           new OutlineInputBorder(
            //                           //         borderRadius:
            //                           //             new BorderRadius.circular(
            //                           //                 5.0),
            //                           //         borderSide: new BorderSide(
            //                           //           color: Theme.of(context)
            //                           //               .textTheme
            //                           //               .displayLarge!
            //                           //               .color!
            //                           //               .withOpacity(.7),
            //                           //         ),
            //                           //       ),
            //                           //       focusedBorder:
            //                           //           new OutlineInputBorder(
            //                           //         borderRadius:
            //                           //             new BorderRadius.circular(
            //                           //                 5.0),
            //                           //         borderSide: new BorderSide(
            //                           //           color: Theme.of(context)
            //                           //               .textTheme
            //                           //               .displayLarge!
            //                           //               .color!,
            //                           //         ),
            //                           //       ),
            //                           //     ),
            //                           //     childBuilder: (selectedValues) {
            //                           //       return Padding(
            //                           //         padding:
            //                           //             const EdgeInsets.symmetric(
            //                           //                 horizontal: 14.0),
            //                           //         child: Text(
            //                           //           '${selectedValues.join(', ')}',
            //                           //           style: TextStyle(
            //                           //             color: Theme.of(context)
            //                           //                 .textTheme
            //                           //                 .displayLarge!
            //                           //                 .color,
            //                           //           ),
            //                           //           maxLines: 2,
            //                           //           overflow: TextOverflow.ellipsis,
            //                           //         ),
            //                           //       );
            //                           //     },
            //                           //   ),
            //                           // ),

            //                           SizedBox(
            //                             height: 15.0,
            //                           ),
            //                           TextFormFieldWidget(
            //                             title: "Message",
            //                             textEditingController: authController
            //                                 .txtCMessageController,
            //                             hintText: "Enter message",
            //                             maxLength: 6,
            //                             validator: (val) => authController
            //                                 .validateCheckEmpty(val, 'Message'),
            //                           ),
            //                           SizedBox(
            //                             height: 30.0,
            //                           ),
            //                           AppButtonWidget(
            //                             text: "Send Message",
            //                             textColor: whiteColor,
            //                             onPressed: () {
            //                               if (_formKey.currentState!
            //                                   .validate()) {
            //                                 log("message success --> ${authController.txtCNameController.text}\n"
            //                                     "${authController.txtCEmailController.text}\n"
            //                                     "${authController.txtCCompanyController.text}\n"
            //                                     "${authController.txtCMessageController.text}\n"
            //                                     "${authController.cCountryCode}\n"
            //                                     "${authController.txtCPhoneController.text}\n"
            //                                     "${authController.featureList}");
            //                                 authController.userContactUs(
            //                                     context: context);
            //                               }
            //                             },
            //                             fontSize: 16.0,
            //                             backgroundColor: appPrimaryColor,
            //                             borderSideColor: appPrimaryColor,
            //                             foregroundColor: appPrimaryColor,
            //                             // width: 200.0,
            //                             padding: EdgeInsets.symmetric(
            //                                 horizontal: 21.0, vertical: 20.0),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            ////old widget
            // SizedBox(
            //   height: 20.0,
            // ),
            // Responsive(
            //   mobile: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         'Get in touch with us!',
            //         style: TextStyle(
            //           fontSize: Responsive.isDesktop(context) ? 55.0 : 35.0,
            //           fontWeight: FontWeight.w700,
            //           // color: appPrimaryDark,
            //           color: Theme.of(context).textTheme.displayLarge!.color,
            //           height: 1.1,
            //         ),
            //         textAlign: TextAlign.left,
            //         // textAlign: Responsive.isDesktop(context)
            //         //     ? TextAlign.left
            //         //     : TextAlign.center,
            //         maxLines: 3,
            //       ),
            //       SizedBox(
            //         height: kDefaultPadding,
            //       ),
            //       Text(
            //         'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet at sit.',
            //         maxLines: 3,
            //         textAlign: TextAlign.left,
            //         // textAlign: Responsive.isDesktop(context)
            //         //     ? TextAlign.left
            //         //     : TextAlign.center,
            //         style: TextStyle(
            //           fontSize: Responsive.isDesktop(context) ? 18.0 : 16.5,
            //           fontWeight: FontWeight.w500,
            //           color: Theme.of(context).textTheme.displayLarge!.color,
            //           height: 1.7,
            //           // letterSpacing: 0.5,
            //         ),
            //       ),
            //       SizedBox(
            //         height: kDefaultPadding +
            //             (Responsive.isDesktop(context) ? 25 : 5.0),
            //       ),
            //       Text(
            //         "Follow us on social media",
            //         style: TextStyle(
            //           fontSize: Responsive.isDesktop(context) ? 27.0 : 21.5,
            //           fontWeight: FontWeight.w700,
            //           color: Theme.of(context).textTheme.displayLarge!.color,
            //           height: 1.7,
            //           // letterSpacing: 0.5,
            //         ),
            //       ),
            //       SizedBox(
            //         height: 10.0,
            //       ),
            //       Container(
            //         constraints: BoxConstraints(maxWidth: kMaxWidth - 900),
            //         child: Wrap(
            //           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 0.0),
            //               child: SocialButtonIconWidget(
            //                 isHover: isDK,
            //                 icon: FontAwesomeIcons.facebookF,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 20.0),
            //               child: SocialButtonIconWidget(
            //                 isHover: isDK,
            //                 icon: FontAwesomeIcons.twitter,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 20.0),
            //               child: SocialButtonIconWidget(
            //                 isHover: isDK,
            //                 icon: FontAwesomeIcons.instagram,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 20.0),
            //               child: SocialButtonIconWidget(
            //                 isHover: isDK,
            //                 icon: FontAwesomeIcons.linkedinIn,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 20.0),
            //               child: SocialButtonIconWidget(
            //                 isHover: isDK,
            //                 icon: FontAwesomeIcons.youtube,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 20.0),
            //               child: SocialButtonIconWidget(
            //                 isHover: isDK,
            //                 icon: FontAwesomeIcons.whatsapp,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 20.0),
            //               child: SocialButtonIconWidget(
            //                 isHover: isDK,
            //                 icon: FontAwesomeIcons.telegram,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20.0,
            //             ),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         height: 15.0,
            //       ),
            //       Container(
            //         padding: EdgeInsets.all(20.0),
            //         decoration: BoxDecoration(
            //             color: Theme.of(context).buttonColor,
            //             borderRadius: BorderRadius.circular(
            //               25.0,
            //             )),
            //         width: Get.width,
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             TextFormFieldWidget(
            //               title: "Name",
            //               textEditingController: TextEditingController(),
            //               hintText: "Enter your name",
            //             ),
            //             SizedBox(
            //               height: 25.0,
            //             ),
            //             TextFormFieldWidget(
            //               title: "Email Address",
            //               textEditingController: TextEditingController(),
            //               hintText: "Enter your email",
            //             ),
            //             SizedBox(
            //               height: 25.0,
            //             ),
            //             TextFormFieldWidget(
            //               title: "Phone",
            //               textEditingController: TextEditingController(),
            //               hintText: "(000) 000 000",
            //             ),
            //             SizedBox(
            //               height: 25.0,
            //             ),
            //             TextFormFieldWidget(
            //               title: "Company",
            //               textEditingController: TextEditingController(),
            //               hintText: "Company name",
            //             ),
            //             SizedBox(
            //               height: 25.0,
            //             ),
            //             TextFormFieldWidget(
            //               title: "Message",
            //               textEditingController: TextEditingController(),
            //               hintText: "Enter message",
            //               maxLength: 6,
            //             ),
            //             SizedBox(
            //               height: 30.0,
            //             ),
            //             AppButtonWidget(
            //               text: "Send Message",
            //               textColor: whiteColor,
            //               onPressed: () {},
            //               fontSize: 16.0,
            //               backgroundColor: appPrimaryColor,
            //               borderSideColor: appPrimaryColor,
            //               foregroundColor: appPrimaryColor,
            //               width: Get.width,
            //               padding: EdgeInsets.symmetric(
            //                   horizontal: 21.0, vertical: 20.0),
            //             ),
            //             SizedBox(
            //               height: 13.0,
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            //   desktop: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Expanded(
            //         child: Container(
            //           child: Column(
            //             mainAxisSize: MainAxisSize.min,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               Text(
            //                 'Get in touch \nwith us!',
            //                 style: TextStyle(
            //                   fontSize:
            //                       Responsive.isDesktop(context) ? 55.0 : 31.0,
            //                   fontWeight: FontWeight.w800,
            //                   // color: appPrimaryDark,
            //                   color: Theme.of(context)
            //                       .textTheme
            //                       .displayLarge!
            //                       .color,
            //                   height: 1.1,
            //                 ),
            //                 textAlign: TextAlign.left,
            //                 // textAlign: Responsive.isDesktop(context)
            //                 //     ? TextAlign.left
            //                 //     : TextAlign.center,
            //                 maxLines: 3,
            //               ),
            //               SizedBox(
            //                 height: kDefaultPadding,
            //               ),
            //               Text(
            //                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet at sit.',
            //                 maxLines: 3,
            //                 textAlign: TextAlign.left,
            //                 // textAlign: Responsive.isDesktop(context)
            //                 //     ? TextAlign.left
            //                 //     : TextAlign.center,
            //                 style: TextStyle(
            //                   fontSize:
            //                       Responsive.isDesktop(context) ? 18.0 : 16.5,
            //                   fontWeight: FontWeight.w500,
            //                   color: Theme.of(context)
            //                       .textTheme
            //                       .displayLarge!
            //                       .color,
            //                   height: 1.7,
            //                   // letterSpacing: 0.5,
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: kDefaultPadding +
            //                     (Responsive.isDesktop(context) ? 25 : 5.0),
            //               ),
            //               Text(
            //                 "Follow us on social media",
            //                 style: TextStyle(
            //                   fontSize:
            //                       Responsive.isDesktop(context) ? 27.0 : 21.5,
            //                   fontWeight: FontWeight.w700,
            //                   color: Theme.of(context)
            //                       .textTheme
            //                       .displayLarge!
            //                       .color,
            //                   height: 1.7,
            //                   // letterSpacing: 0.5,
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: 10.0,
            //               ),
            //               Container(
            //                 constraints:
            //                     BoxConstraints(maxWidth: kMaxWidth - 900),
            //                 child: Row(
            //                   mainAxisAlignment:
            //                       MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     SocialButtonIconWidget(
            //                       isHover: isDK,
            //                       icon: FontAwesomeIcons.facebookF,
            //                     ),
            //                     SocialButtonIconWidget(
            //                       isHover: isDK,
            //                       icon: FontAwesomeIcons.twitter,
            //                     ),
            //                     SocialButtonIconWidget(
            //                       isHover: isDK,
            //                       icon: FontAwesomeIcons.instagram,
            //                     ),
            //                     SocialButtonIconWidget(
            //                       isHover: isDK,
            //                       icon: FontAwesomeIcons.linkedinIn,
            //                     ),
            //                     SocialButtonIconWidget(
            //                       isHover: isDK,
            //                       icon: FontAwesomeIcons.youtube,
            //                     ),
            //                     SocialButtonIconWidget(
            //                       isHover: isDK,
            //                       icon: FontAwesomeIcons.whatsapp,
            //                     ),
            //                     SocialButtonIconWidget(
            //                       isHover: isDK,
            //                       icon: FontAwesomeIcons.telegram,
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         width: 170.0,
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.all(30.0),
            //           decoration: BoxDecoration(
            //               color: Theme.of(context).buttonColor,
            //               borderRadius: BorderRadius.circular(
            //                 25.0,
            //               )),
            //           width: Get.width,
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Row(
            //                 children: [
            //                   Expanded(
            //                     child: TextFormFieldWidget(
            //                       title: "Name",
            //                       textEditingController:
            //                           TextEditingController(),
            //                       hintText: "Enter your name",
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: 20.0,
            //                   ),
            //                   Expanded(
            //                     child: TextFormFieldWidget(
            //                       title: "Email Address",
            //                       textEditingController:
            //                           TextEditingController(),
            //                       hintText: "Enter your email",
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 25.0,
            //               ),
            //               Row(
            //                 children: [
            //                   Expanded(
            //                     child: TextFormFieldWidget(
            //                       title: "Phone",
            //                       textEditingController:
            //                           TextEditingController(),
            //                       hintText: "(000) 000 000",
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: 20.0,
            //                   ),
            //                   Expanded(
            //                     child: TextFormFieldWidget(
            //                       title: "Company",
            //                       textEditingController:
            //                           TextEditingController(),
            //                       hintText: "Company name",
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 25.0,
            //               ),
            //               TextFormFieldWidget(
            //                 title: "Message",
            //                 textEditingController: TextEditingController(),
            //                 hintText: "Enter message",
            //                 maxLength: 6,
            //               ),
            //               SizedBox(
            //                 height: 30.0,
            //               ),
            //               AppButtonWidget(
            //                 text: "Send Message",
            //                 textColor: whiteColor,
            //                 onPressed: () {},
            //                 fontSize: 16.0,
            //                 backgroundColor: appPrimaryColor,
            //                 borderSideColor: appPrimaryColor,
            //                 foregroundColor: appPrimaryColor,
            //                 width: 200.0,
            //                 padding: EdgeInsets.symmetric(
            //                     horizontal: 21.0, vertical: 20.0),
            //               ),
            //             ],
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            SizedBox(
              height: Responsive.isDesktop(context) ? 50.0 : 25.0,
            ),
            Column(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: kMaxWidth - 670.0),
                  child: Column(
                    crossAxisAlignment: Responsive.isDesktop(context)
                        ? CrossAxisAlignment.center
                        : CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Prefer to reach out directly?",
                        style: TextStyle(
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          // color: appTextColor,
                          fontSize: Responsive.isDesktop(context) ? 45.0 : 28.0,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: Responsive.isDesktop(context)
                            ? TextAlign.center
                            : TextAlign.left,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet.',
                        maxLines: 3,
                        textAlign: Responsive.isDesktop(context)
                            ? TextAlign.center
                            : TextAlign.left,
                        style: TextStyle(
                          fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
                          fontWeight: FontWeight.w500,
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          // color: appTextColor,
                          height: 1.6,
                          // letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: Responsive.isMobile(context)
                        ? 1
                        : Responsive.isTablet(context)
                            ? 2
                            : Responsive.isTablet(context)
                                ? 3
                                : 3,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                    mainAxisExtent:
                        Responsive.isDesktop(context) ? 225.0 : 185.0,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: dList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: appPrimaryColor,
                            width: 3.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: Responsive.isDesktop(context)
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          Text(
                            dList[index].title.toString(),
                            style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .color,
                              // color: appTextColor,
                              fontSize:
                                  Responsive.isDesktop(context) ? 31.0 : 22.0,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: Responsive.isDesktop(context)
                                ? TextAlign.center
                                : TextAlign.left,
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                            textAlign: Responsive.isDesktop(context)
                                ? TextAlign.center
                                : TextAlign.left,
                            style: TextStyle(
                              fontSize:
                                  Responsive.isDesktop(context) ? 17.0 : 16.0,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .color,
                              // color: appTextColor,
                              height: 1.6,
                              // letterSpacing: 0.5,
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            dList[index].subTitle.toString(),
                            // "support@software.com",
                            style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .color,
                              // color: appTextColor,
                              fontSize:
                                  Responsive.isDesktop(context) ? 18.0 : 17.0,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.underline,
                            ),
                            textAlign: Responsive.isDesktop(context)
                                ? TextAlign.center
                                : TextAlign.left,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
            Divider(
              color: Theme.of(context).dividerColor,
              height: Responsive.isDesktop(context) ? 160.0 : 35.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Frequently Asked Questions",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.displayLarge!.color,
                    // color: appTextColor,
                    fontSize: Responsive.isDesktop(context) ? 45.0 : 28.0,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign:
                      //  Responsive.isDesktop(context)
                      //     ? TextAlign.center
                      //     : TextAlign.left,
                      TextAlign.left,
                ),
                SizedBox(
                  height: 45.0,
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: Responsive.isMobile(context)
                        ? 1
                        : Responsive.isTablet(context)
                            ? 2
                            : Responsive.isTablet(context)
                                ? 2
                                : 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                    mainAxisExtent:
                        Responsive.isDesktop(context) ? 140.0 : 100.0,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: infoList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(
                          Responsive.isDesktop(context) ? 30.0 : 18.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        borderRadius: BorderRadius.circular(15.0),
                        // border: Border(
                        //   bottom: BorderSide(
                        //     color: appPrimaryColor,
                        //     width: 3.0,
                        //   ),
                        // ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              infoList[index],
                              textAlign: TextAlign.left,
                              // textAlign: Responsive.isDesktop(context)
                              //     ? TextAlign.center
                              //     : TextAlign.left,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize:
                                    Responsive.isDesktop(context) ? 23.0 : 18.0,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                                // color: appTextColor,
                                height: 1.6,

                                // letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: appPrimaryColor,
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            padding: EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: whiteColor,
                              size: Responsive.isDesktop(context) ? 22.0 : 17.0,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
            Divider(
              color: Theme.of(context).dividerColor,
              height: Responsive.isDesktop(context) ? 160.0 : 35.0,
            ),
            Column(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: kMaxWidth - 670.0),
                  child: Column(
                    crossAxisAlignment: Responsive.isDesktop(context)
                        ? CrossAxisAlignment.center
                        : CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Our Offices",
                        style: TextStyle(
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          // color: appTextColor,
                          fontSize: Responsive.isDesktop(context) ? 45.0 : 28.0,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: Responsive.isDesktop(context)
                            ? TextAlign.center
                            : TextAlign.left,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet.',
                        maxLines: 3,
                        textAlign: Responsive.isDesktop(context)
                            ? TextAlign.center
                            : TextAlign.left,
                        style: TextStyle(
                          fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
                          fontWeight: FontWeight.w500,
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          // color: appTextColor,
                          height: 1.6,
                          // letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 45.0,
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: Responsive.isMobile(context)
                        ? 1
                        : Responsive.isTablet(context)
                            ? 2
                            : Responsive.isTablet(context)
                                ? 3
                                : 3,
                    crossAxisSpacing: 40,
                    mainAxisSpacing: 30,
                    mainAxisExtent:
                        Responsive.isDesktop(context) ? 300.0 : 300.0,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: dataExList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(25.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        borderRadius: BorderRadius.circular(15.0),
                        // border: Border(
                        //   bottom: BorderSide(
                        //     color: appPrimaryColor,
                        //     width: 3.0,
                        //   ),
                        // ),
                      ),
                      child: Column(
                        crossAxisAlignment: Responsive.isDesktop(context)
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.center
                            : MainAxisAlignment.start,
                        children: [
                          Responsive.isDesktop(context)
                              ? Row(
                                  children: [
                                    Image.asset(
                                      Get.find<ThemeController>().isDarkMode
                                          ? dataExList[index].iconDk.toString()
                                          : dataExList[index].icon.toString(),
                                      height: 50.0,
                                      width: 50.0,
                                    ),
                                    // SvgPicture.asset(
                                    //   dataExList[index].icon.toString(),
                                    //   color: Theme.of(context)
                                    //       .textTheme
                                    //       .displayLarge!
                                    //       .color,
                                    // ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Text(
                                      dataExList[index].title.toString(),
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .color,
                                        // color: appTextColor,
                                        fontSize: Responsive.isDesktop(context)
                                            ? 28.0
                                            : 22.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: Responsive.isDesktop(context)
                                          ? TextAlign.center
                                          : TextAlign.left,
                                    ),
                                  ],
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      Get.find<ThemeController>().isDarkMode
                                          ? dataExList[index].iconDk.toString()
                                          : dataExList[index].icon.toString(),
                                      height: 45.0,
                                      width: 45.0,
                                    ),
                                    // SvgPicture.asset(
                                    //   dataExList[index].icon.toString(),
                                    //   color: Theme.of(context)
                                    //       .textTheme
                                    //       .displayLarge!
                                    //       .color,
                                    //   height: 50.0,
                                    //   width: 50.0,
                                    // ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      dataExList[index].title.toString(),
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .color,
                                        // color: appTextColor,
                                        fontSize: Responsive.isDesktop(context)
                                            ? 31.0
                                            : 22.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: Responsive.isDesktop(context)
                                          ? TextAlign.center
                                          : TextAlign.left,
                                    ),
                                  ],
                                ),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 35.0 : 20.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Expanded(
                                child: Text(
                                  dataExList[index].address.toString(),
                                  style: TextStyle(
                                    fontSize: Responsive.isDesktop(context)
                                        ? 17.0
                                        : 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .color,
                                    // color: appTextColor,
                                    height: 1.6,
                                    // letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 18.0 : 15.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.call_outlined,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Expanded(
                                child: Text(
                                  dataExList[index].mobile.toString(),
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: Responsive.isDesktop(context)
                                        ? 17.0
                                        : 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .color,
                                    // color: appTextColor,
                                    height: 1.6,
                                    // letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 18.0 : 15.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.mail_outline_outlined,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Expanded(
                                child: Text(
                                  dataExList[index].email.toString(),
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: Responsive.isDesktop(context)
                                        ? 17.0
                                        : 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .color,
                                    // color: appTextColor,
                                    height: 1.6,
                                    // letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: Responsive.isDesktop(context) ? kDefaultPadding : 0,
            ),
          ],
        ),
      ),
    );
  }
}

List<DataExampleModel> dataExList = [
  DataExampleModel(
    title: "Los Angeles, CA",
    address: "6022 Brynhurst Ave Los Angeles, California, 90043",
    email: "losangeles@software.com",
    mobile: "(323) 920-6694",
    icon: "assets/icons/ic_add_one.png",
    iconDk: "assets/icons/ic_add_one_dk.png",
  ),
  DataExampleModel(
    title: "New York, NY",
    address: "200 Summit Lake Dr Valhalla, New York(NY), 10595",
    email: "newyork@software.com",
    mobile: "(303) 918-3230",
    icon: "assets/icons/ic_add_two.png",
    iconDk: "assets/icons/ic_add_two_dk.png",
  ),
  DataExampleModel(
    title: "San Francisco, CA",
    address: "1398 Valencia St San Francisco, California, 94110",
    email: "sanfrancisco@software.com",
    mobile: "(510) 287-6694",
    icon: "assets/icons/ic_add_three.png",
    iconDk: "assets/icons/ic_add_three_dk.png",
  ),
];

class TextFormFieldWidget extends StatefulWidget {
  final String? title;
  final TextEditingController textEditingController;
  final String hintText;
  final String? Function(String?)? validator;
  final int? maxLength;
  final bool? isObscureText;
  final Color? textFieldColor;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? inputFormatters;
  const TextFormFieldWidget({
    Key? key,
    this.title,
    this.maxLength,
    this.isObscureText,
    this.validator,
    this.textFieldColor,
    required this.textEditingController,
    required this.hintText,
    this.prefixIcon,
    this.inputFormatters,
  }) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    // bool isHover = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null)
          Text(
            widget.title!.toString(),
            style: TextStyle(
              color: white,
              // color: Theme.of(context).textTheme.displayLarge!.color,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        if (widget.title != null)
          SizedBox(
            height: 15,
          ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (val) => setState(() => isHover = true),
          onExit: (val) => setState(() => isHover = false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 240),
            child: TextFormField(
              // autofocus: true,
              controller: widget.textEditingController,
              validator: widget.validator,
              obscureText: widget.isObscureText ?? false,
              cursorColor: widget.textFieldColor ??
                  Theme.of(context).textTheme.displayLarge!.color!,
              inputFormatters: widget.inputFormatters,
              // style: formFieldValueStyle,
              keyboardType: TextInputType.visiblePassword,
              // obscureText: isObscured,
              style: TextStyle(
                color: widget.textFieldColor ??
                    Theme.of(context).textTheme.displayLarge!.color!,
              ),
              maxLines: widget.maxLength,

              decoration: InputDecoration(
                // hoverColor: red,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                hintStyle: TextStyle(
                  color: widget.textFieldColor ??
                      Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .color!
                          .withOpacity(.6),
                ),
                prefixIcon: widget.prefixIcon,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                  borderSide: new BorderSide(
                      color: widget.textFieldColor ??
                          Theme.of(context).textTheme.displayLarge!.color!,
                      width: isHover ? 1.5 : .0),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                  borderSide: new BorderSide(
                    color: widget.textFieldColor ??
                        Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .color!
                            .withOpacity(.7),
                    width: isHover ? 1.5 : .5,
                  ),
                ),
                focusedBorder: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                  borderSide: new BorderSide(
                    color: widget.textFieldColor ??
                        Theme.of(context).textTheme.displayLarge!.color!,
                    width: 1.5,
                  ),
                ),
                hintText: widget.hintText,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DataExampleModel {
  String? title;
  String? address;
  String? mobile;
  String? email;
  String? icon;
  String? iconDk;
  DataExampleModel({
    this.title,
    this.address,
    this.mobile,
    this.email,
    this.icon,
    this.iconDk,
  });
}

// class PhoneWidget extends StatefulWidget {
//   const PhoneWidget({Key? key}) : super(key: key);

//   @override
//   State<PhoneWidget> createState() => _PhoneWidgetState();
// }

// class _PhoneWidgetState extends State<PhoneWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class PhoneWidget extends StatefulWidget {
  final String? Function(String?)? validator;

  const PhoneWidget({Key? key, this.validator}) : super(key: key);

  @override
  _PhoneWidgetState createState() => _PhoneWidgetState();
}

class _PhoneWidgetState extends State<PhoneWidget> {
  @override
  Widget build(BuildContext context) {
    var countryDropDown = Container(
      decoration: new BoxDecoration(
        // color: Colors.white,
        border: Border(
          right: BorderSide(width: 0.5, color: Colors.grey),
        ),
      ),
      height: 45.0,
      margin: const EdgeInsets.all(3.0),
      width: 70.0,
      child: CountryCodePicker(
        onChanged: (code) {
          setState(() {
            Get.find<AuthController>().cCountryCode = code.dialCode;
          });
        },
        onInit: (value) {
          // setState(() {
          Get.find<AuthController>().cCountryCode = value!.dialCode;
          // });
        },
        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
        initialSelection: 'AE',
        showFlagDialog: false,
        searchStyle: TextStyle(
          color: Theme.of(context).textTheme.displayLarge!.color,
        ),
        emptySearchBuilder: (context) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "No Data Found",
                style: TextStyle(
                  color: Theme.of(context).textTheme.displayLarge!.color!,
                ),
              ),
            ),
          );
        },
        searchDecoration: InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(5.0),
            borderSide: new BorderSide(
              color: Theme.of(context).textTheme.displayLarge!.color!,
            ),
          ),
          enabledBorder: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(5.0),
            borderSide: new BorderSide(
              color: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .color!
                  .withOpacity(.7),
            ),
          ),
          focusedBorder: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(5.0),
            borderSide: new BorderSide(
              color: Theme.of(context).textTheme.displayLarge!.color!,
              width: 1.5,
            ),
          ),
          iconColor: Theme.of(context).textTheme.displayLarge!.color!,
          prefixIconColor: Theme.of(context).textTheme.displayLarge!.color!,
        ),
        dialogBackgroundColor: Theme.of(context).buttonColor,
        dialogTextStyle: TextStyle(
          color: Theme.of(context).textTheme.displayLarge!.color,
        ),
        textStyle: TextStyle(color: white
            // color: Theme.of(context).textTheme.displayLarge!.color,
            ),
        dialogSize: Size(350.0, 500.0),
        showFlag: false,
        padding: EdgeInsets.zero,
        comparator: (a, b) => b.name!.compareTo(a.name!),
        closeIcon: Icon(
          Icons.close,
          color: Theme.of(context).textTheme.displayLarge!.color!,
        ),
        //Get the country information relevant to the initial selection
        // onInit: (code) =>
        //     debugPrint("on init ${code!.name} ${code.dialCode} ${code.name}"),
      ),
    );
    return Container(
      width: double.infinity,
      // margin: new EdgeInsets.only(top: 10.0, bottom: 10.0, right: 3.0),
      // color: Colors.white,
      child: TextFormFieldWidget(
        title: "Phone",
        textEditingController: Get.find<AuthController>().txtCPhoneController,
        hintText: "Enter phone",
        prefixIcon: countryDropDown,
        validator: widget.validator,
        textFieldColor: white,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}

/// dropdown
class CustomMultiselectDropDown extends StatefulWidget {
  final Function(List<String>) selectedList;
  final List<String> listOFStrings;
  final List<String> listOFSelectedItem;
  final String? hintText;

  const CustomMultiselectDropDown(
      {Key? key,
      required this.selectedList,
      required this.listOFStrings,
      required this.listOFSelectedItem,
      this.hintText = "Select payment types"})
      : super(key: key);

  @override
  createState() {
    return _CustomMultiselectDropDownState();
  }
}

class _CustomMultiselectDropDownState extends State<CustomMultiselectDropDown> {
  // List<String> listOFSelectedItem = [];
  String selectedText = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      decoration: BoxDecoration(
        border: Border.all(
          // color: greyColor,
          color: white,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(
            // color: appPrimaryColor,
            width: 0.1,
          ),
        ),
        // collapsedIconColor: Theme.of(context).textTheme.headline1!.color,
        collapsedIconColor: white,
        iconColor: white,
        // iconColor: Theme.of(context).textTheme.headline1!.color,
        title: Text(
          widget.listOFSelectedItem.isEmpty
              ? widget.hintText!
              : widget.listOFSelectedItem.join(", "),
          style: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.normal, color: white,
            // color: Theme.of(context).textTheme.headline1!.color,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        children: <Widget>[
          ...widget.listOFStrings
              .map((e) => Container(
                    margin: const EdgeInsets.only(bottom: 5.0, top: 3.0),
                    child: _ViewItem(
                        item: e,
                        selected: (val) {
                          selectedText = val;
                          if (widget.listOFSelectedItem.contains(val)) {
                            widget.listOFSelectedItem.remove(val);
                          } else {
                            widget.listOFSelectedItem.add(val);
                          }
                          widget.selectedList(widget.listOFSelectedItem);
                          setState(() {});
                        },
                        itemSelected: widget.listOFSelectedItem.contains(e)),
                  ))
              .toList(),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

class _ViewItem extends StatelessWidget {
  String item;
  bool itemSelected;
  final Function(String) selected;

  _ViewItem(
      {required this.item, required this.itemSelected, required this.selected});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      // EdgeInsets.only(left: size.width * .032, right: size.width * .038),
      child: Row(
        children: [
          SizedBox(
            height: 24.0,
            width: 24.0,
            child: Theme(
              data: ThemeData(
                unselectedWidgetColor: white,
                // unselectedWidgetColor:
                // Theme.of(context).textTheme.headline1!.color,
                primarySwatch: appPrimaryColor,
              ),
              child: Checkbox(
                value: itemSelected,

                onChanged: (val) {
                  selected(item);
                },
                // activeColor: blue,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
            // width: size.width * .025,
          ),
          Expanded(
            child: Text(
              item,
              style: TextStyle(
                color: white,
                // color: Theme.of(context).textTheme.headline1!.color,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              // style: GoogleFonts.poppins(
              //   textStyle: TextStyle(
              //     color: PrimeDentalColors.grey,
              //     fontWeight: FontWeight.w400,
              //     fontSize: 17.0,
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
