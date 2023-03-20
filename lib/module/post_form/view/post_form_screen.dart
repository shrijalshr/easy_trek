import 'dart:io';

import 'package:easy_trek/core/export.dart';
import 'package:easy_trek/module/post_form/controller/post_form_controller.dart';
import 'package:easy_trek/widgets/app_button.dart';
import 'package:easy_trek/widgets/my_textfield.dart';
import 'package:easy_trek/widgets/scrollable_column.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostFormScreen extends StatelessWidget {
  const PostFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PostFormController controller = Get.put(PostFormController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Post"),
        centerTitle: true,
      ),
      body: ScrollableColumn(
        children: [
          Text(
            "Select Image",
            style: context.textStyles.titleMedium,
          ).pb(8),
          Container(
            height: 20.fh,
            width: double.maxFinite,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xffF2F2F2),
              border: Border.all(color: context.color.darkGrey),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: [
                SizedBox(
                  height: 20.fh,
                  width: double.maxFinite,
                  child: Obx(
                    () => GridView.builder(
                        itemCount: controller.imageFileList!.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 6,
                                crossAxisSpacing: 05,
                                mainAxisSpacing: 05),
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 90,
                            width: 90,
                            child: Stack(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          // color: context.color.darkGrey,
                                          ),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Image.file(
                                    File(controller.imageFileList![index].path),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: -05,
                                  right: -05,
                                  child: InkWell(
                                    onTap: () {
                                      controller.deleteFile(controller
                                          .imageFileList![index].path);
                                      controller.imageFileList!.removeAt(index);
                                    },
                                    child: CircleAvatar(
                                      radius: 9,
                                      backgroundColor: context.color.errorColor
                                          .withOpacity(.8),
                                      child: Icon(
                                        Icons.close,
                                        color: context.color.white,
                                        size: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: () {
                      controller.selectImages();
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: context.color.darkGrey,
                          ),
                          borderRadius: BorderRadius.circular(6)),
                      child: const Icon(
                        Icons.add,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ).pb(16),
          MyTextField(
            textController: controller.caption,
            label: "Add Caption",
            maxLines: 3,
            borderRadius: 8,
            border: InputBorder.none,
            fillColor: const Color(0xffF2F2F2),
          ).pb(16),
          MyTextField(
            textController: controller.hashtags,
            label: "Add Hashtags",
            maxLines: 3,
            borderRadius: 8,
            border: InputBorder.none,
            fillColor: const Color(0xffF2F2F2),
          ).pb(16),
          AppButton(
            onPressed: () {},
            label: const Text("Upload"),
          )
        ],
      ),
    );
  }
}
