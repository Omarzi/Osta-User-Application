import '../../../utils/constants/exports.dart';

class CustomDropdownMenu extends StatefulWidget {
   CustomDropdownMenu({Key? key,this.label,this.trailingIconColor}) : super(key: key);
   Widget? label;
   Color? trailingIconColor;
   @override
  State<CustomDropdownMenu> createState() => _CustomDropdownMenuState();
}

class _CustomDropdownMenuState extends State<CustomDropdownMenu> {
  SelectedItem? selectedItem;
   final TextEditingController selectedController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width =MediaQuery.of(context).size.width;
    return Column(
      children: [
        DropdownMenu<SelectedItem>(
          width: width,
          controller: selectedController,
          enableFilter: true,
          requestFocusOnTap: true,
          trailingIcon: Icon(Icons.keyboard_arrow_down,size: 30.sp,color:widget.trailingIconColor),
         label: widget.label,
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 5.0),
          ),
          onSelected: (SelectedItem? item) {
            setState(() {
              selectedItem = item ;
            });
          },
          dropdownMenuEntries:
          SelectedItem.values.map<DropdownMenuEntry<SelectedItem>>(
                (SelectedItem item) {
              return DropdownMenuEntry<SelectedItem>(
                value: SelectedItem.itemOne,
                label:item.item,
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
enum SelectedItem { itemOne('Saudi Arabia'), itemTwo("Egypt");
  const SelectedItem (this.item);
  final String item;
}
