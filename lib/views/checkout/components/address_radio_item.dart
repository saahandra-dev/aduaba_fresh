import 'package:aduaba_fresh/models/address_model.dart';
import 'package:flutter/material.dart';

class AddressRadioItem extends StatelessWidget {
  final AddressModel item;
  final int count;
  AddressRadioItem({this.item, this.count});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 16, top: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 110,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            item.name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF10151A),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 310,
                            child: Text(
                              item.address,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.2,
                                color: Color(0xFF999999),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            item.number,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.2,
                              color: Color(0xFF999999),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      width: 145,
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: Size(50, 30),
                                alignment: Alignment.centerLeft),
                            child: Text(
                              "Change",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF10151A),
                              ),
                            ),
                            onPressed: () {},
                          ),
                          count > 1
                              ? TextButton(
                                  child: Text(
                                    "Delete",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.red,
                                    ),
                                  ),
                                  onPressed: () {},
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ),

              count > 1
                  ? Container(
                    height: 30.0,
                    width: 30.0,
                    child: Radio(
                      value: 0,
                      groupValue: item.isSelected ? 0 : 1,
                      activeColor: Color(0xFF3C673D),
                      onChanged: (value) {},
                    ),
                  )
                  : Container(),
            ],
          ),
          Divider(color: Colors.grey),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}