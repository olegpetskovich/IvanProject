import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:ivan_project/generated/locale_keys.g.dart';
import 'package:ivan_project/presentation/consts/icons.dart';
import 'package:ivan_project/presentation/consts/styles.dart';
import 'package:ivan_project/presentation/screens/fillAccountsDataScreen/widgets/select_photo_options.dart';
import 'package:ivan_project/presentation/widgets/default_text_field.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class AccDataPanel extends StatefulWidget {
  final String text;

  const AccDataPanel({
    super.key,
    required this.text,
  });

  @override
  State<AccDataPanel> createState() => _AccDataPanelState();
}

class _AccDataPanelState extends State<AccDataPanel> {
  late final TextEditingController _inputBusinessInfoController;
  late final TextEditingController _inputEntertainmentInfoController;

  @override
  void initState() {
    super.initState();
    _inputBusinessInfoController = TextEditingController();
    _inputEntertainmentInfoController = TextEditingController();
  }

  @override
  void dispose() {
    _inputBusinessInfoController.dispose();
    _inputEntertainmentInfoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 2,
          child: Column(
            children: [
              IconButton(
                icon: _image == null
                    ? const CircleAvatar(
                        backgroundImage: Svg(icPhotoPlaceholder),
                        radius: 90,
                      )
                    : CircleAvatar(
                        backgroundImage: FileImage(_image!),
                        radius: 90,
                      ),
                iconSize: 90,
                onPressed: () => _showSelectPhotoOptions(context),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Text(
                  widget.text,
                  style: Styles.textColorMainLight15,
                ),
              )
            ],
          ),
        ),
        Flexible(
          flex: 3,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: DefaultTextField(
                  hint: LocaleKeys.name.tr(),
                  errorLabel: null,
                  controller: _inputBusinessInfoController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: DefaultTextField(
                  hint: LocaleKeys.userName.tr(),
                  errorLabel: null,
                  controller: _inputEntertainmentInfoController,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  File? _image;

  Future _pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      File? img = File(image.path);
      img = await _cropImage(imageFile: img);
      setState(() {
        _image = img;
        Navigator.of(context).pop();
      });
    } on PlatformException catch (e) {
      print(e);
      Navigator.of(context).pop();
    }
  }

  Future<File?> _cropImage({required File imageFile}) async {
    CroppedFile? croppedImage =
        await ImageCropper().cropImage(sourcePath: imageFile.path);
    if (croppedImage == null) return null;
    return File(croppedImage.path);
  }

  void _showSelectPhotoOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.28,
          maxChildSize: 0.4,
          minChildSize: 0.28,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: SelectPhotoOptionsScreen(
                onTap: _pickImage,
              ),
            );
          }),
    );
  }
}
