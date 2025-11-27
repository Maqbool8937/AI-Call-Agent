import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SystemDropdown1Field extends StatefulWidget {
  SystemDropdown1Field({super.key});

  @override
  State<SystemDropdown1Field> createState() => _SystemDropdown1FieldState();
}

class _SystemDropdown1FieldState extends State<SystemDropdown1Field> {
  final SystemDropdown1Controller controller = Get.put(
    SystemDropdown1Controller(),
  );

  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  bool isDropdownOpen = false;

  @override
  void dispose() {
    _removeDropdown();
    super.dispose();
  }

  void _toggleDropdown() {
    if (isDropdownOpen) {
      _removeDropdown();
    } else {
      _showDropdown();
    }
  }

  void _showDropdown() {
    _overlayEntry = _createOverlay();
    Overlay.of(context).insert(_overlayEntry!);
    isDropdownOpen = true;
  }

  void _removeDropdown() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
    isDropdownOpen = false;
  }

  OverlayEntry _createOverlay() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Stack(
        children: [
          // ***** closes dropdown when tapping outside *****
          Positioned.fill(
            child: GestureDetector(
              onTap: _removeDropdown,
              behavior: HitTestBehavior.translucent,
            ),
          ),

          Positioned(
            left: offset.dx,
            top: offset.dy + size.height + 5,
            width: size.width,
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(10),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 250),
                child: SingleChildScrollView(
                  child: Column(
                    children: controller.genders.map((item) {
                      return InkWell(
                        onTap: () {
                          controller.changeGender(item);
                          _removeDropdown();
                        },
                        child: Container(
                          width: size.width,
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 15,
                          ),
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: Obx(
        () => GestureDetector(
          onTap: _toggleDropdown,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    controller.selectedGender.value,
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Icon(Icons.arrow_drop_down, color: Color(0xff644983)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SystemDropdown1Controller extends GetxController {
  var selectedGender = "Select Theme".obs;

  final List<String> genders = ["Light Mode", "Dark Mode"];

  void changeGender(String value) {
    selectedGender.value = value;
  }
}
