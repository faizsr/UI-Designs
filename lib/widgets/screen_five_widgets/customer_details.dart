import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomerDetails extends StatelessWidget {
  final String listTitle;
  final String listSubtitle;
  final bool setIcon;
  final bool shareButton;

  CustomerDetails({
    required this.listTitle,
    required this.listSubtitle,
    this.setIcon = false,
    this.shareButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(0),
          title: Text(
            listTitle,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              listSubtitle,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          trailing: setIcon
              ? SizedBox(
                  width: 105,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.purple),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.phone_rounded,
                              size: 20,
                              color: Colors.purple,
                            ),
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      Icon(
                        MdiIcons.whatsapp,
                        size: 42,
                        color: Colors.green.shade600,
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
        ),
        shareButton
            ? Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: const BorderSide(
                              color: Colors.purple, width: 1.3)),
                      onPressed: () {},
                      child: const Text(
                        'Share reciept',
                        style: TextStyle(color: Colors.purple, fontSize: 19),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              )
            : const SizedBox(),
      ],
    );
  }
}
