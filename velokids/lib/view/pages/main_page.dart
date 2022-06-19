import 'package:flutter/material.dart';
import 'package:velokids/controller/main_controller.dart';
import 'package:velokids/view/utils/export_utils.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.neutral0,
          toolbarHeight: 6.7.h,
          title: const Text('VELOKIDS').button(AppColors.neutral200),
          centerTitle: true,
        ),
        backgroundColor: AppColors.neutral0,
        body: _handleBody(context),
      ),
    );
  }

  Widget _handleBody(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      builder: (mainController) {
        return SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 2.h),
            alignment: Alignment.center,
            child: Column(
              children: [
                MainTile(
                  service: mainController.services[0]!,
                  controller: mainController,
                ),
                MainTile(
                  service: mainController.services[1]!,
                  controller: mainController,
                ),
                MainTile(
                  service: mainController.services[2]!,
                  controller: mainController,
                ),
                MainTile(
                  service: mainController.services[3]!,
                  controller: mainController,
                ),
                MainTile(
                  service: mainController.services[4]!,
                  controller: mainController,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: CommonButton(
                    type: 1,
                    title: 'HISTÓRICO',
                    onPressed: () {
                      Navigator.pushNamed(context, '/history');
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
