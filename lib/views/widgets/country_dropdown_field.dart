import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasnain_project/controllers/getx_controller/coutry_dropdown_controller.dart';

class CountryDropdownField extends StatefulWidget {
  final CountryDropdownController controller =
      Get.find<CountryDropdownController>();

  CountryDropdownField({super.key});

  @override
  State<CountryDropdownField> createState() => _CountryDropdownFieldState();
}

class _CountryDropdownFieldState extends State<CountryDropdownField> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  bool isDropdownOpen = false;

  void _toggleDropdown() {
    if (isDropdownOpen) {
      _overlayEntry?.remove();
      _overlayEntry = null;
      isDropdownOpen = false;
    } else {
      _overlayEntry = _createOverlay();
      Overlay.of(context).insert(_overlayEntry!);
      isDropdownOpen = true;
    }
  }

  OverlayEntry _createOverlay() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx,
        top: offset.dy + size.height,
        width: size.width, // ✅ Full container width
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0, size.height + 5),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(10),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 250, // optional scrollable height
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: widget.controller.countries.map((country) {
                    return InkWell(
                      onTap: () {
                        widget.controller.changeCountry(country);
                        _toggleDropdown();
                      },
                      child: Container(
                        width: size.width,
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 15,
                        ),
                        child: Text(
                          country,
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
                    widget.controller.selectedCountry.value.isEmpty
                        ? "Select Country"
                        : widget.controller.selectedCountry.value,
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

class GenderFilterField1 extends StatefulWidget {
  GenderFilterField1({super.key});

  @override
  State<GenderFilterField1> createState() => _GenderFilterFieldState();
}

class _GenderFilterFieldState extends State<GenderFilterField1>
    with WidgetsBindingObserver {
  final GenderFilterController1 controller = Get.put(GenderFilterController1());

  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  bool isDropdownOpen = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    _removeDropdown(); // ensure overlay removed
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  // If app lifecycle changes (e.g. background), remove overlay to be safe
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state != AppLifecycleState.resumed) {
      _removeDropdown();
    }
    super.didChangeAppLifecycleState(state);
  }

  void _toggleDropdown() {
    if (isDropdownOpen) {
      _removeDropdown();
    } else {
      _showDropdown();
    }
  }

  void _showDropdown() {
    // remove any existing (safety)
    _removeDropdown();

    _overlayEntry = _createOverlay();
    Overlay.of(context)?.insert(_overlayEntry!);
    isDropdownOpen = true;
  }

  void _removeDropdown() {
    if (_overlayEntry != null) {
      try {
        _overlayEntry!.remove();
      } catch (_) {}
      _overlayEntry = null;
    }
    isDropdownOpen = false;
  }

  OverlayEntry _createOverlay() {
    // get size & offset of the widget
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    return OverlayEntry(
      builder: (context) {
        return Stack(
          children: [
            // full-screen detector: tap outside to close (no visual change)
            Positioned.fill(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  _removeDropdown();
                },
              ),
            ),

            // the dropdown positioned under the field, EXACT SAME DESIGN as before
            Positioned(
              width: size.width,
              child: CompositedTransformFollower(
                link: _layerLink,
                offset: Offset(0, size.height + 5),
                showWhenUnlinked: false,
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(10),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 250),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: controller.genders.map((gender) {
                          return InkWell(
                            onTap: () {
                              controller.changeGender(gender);
                              _removeDropdown();
                            },
                            child: Container(
                              width: size.width,
                              padding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 15,
                              ),
                              child: Text(
                                gender,
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
            ),
          ],
        );
      },
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

class GenderFilterController1 extends GetxController {
  var selectedGender = "Select Gender".obs;

  final List<String> genders = ["Male", "Female", "Other"];

  void changeGender(String gender) {
    selectedGender.value = gender;
  }
}
