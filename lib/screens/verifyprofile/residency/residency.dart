import 'package:country_picker/country_picker.dart';
import 'package:flag/flag.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:qcoin/screens/verifyprofile/residency/scancard.dart';
import 'package:qcoin/screens/verifyprofile/verifyprofile.dart';
import 'package:qcoin/utils/style.dart';
class Residency extends StatefulWidget {
  const Residency({Key? key}) : super(key: key);

  @override
  State<Residency> createState() => _ResidencyState();
}

class _ResidencyState extends State<Residency> {
  String flag = '🇺🇸';
  var countryName="United States";
   String _value = 'passport';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 20),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(40)),
                          depth: 4,
                          lightSource: LightSource.topLeft,
                          color: Colors.white),
                      child: Center(
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 20,
                            color: Colors.black87,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      )),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                const Text("Proof Of Residency",style: registerStyle,),
                SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                const Text("Nationality",style: tileStyle,),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left:2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(flag,style: TextStyle(fontSize:35),),
                      Spacer(),
                      Text(countryName,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color:Color.fromRGBO(74, 74,88,5)
                      ),),
                      const Spacer(),
                      Text(""),
                      Spacer(),
                      TextButton(onPressed: (){
                        showCountryPicker(
                          context: context,
                          countryListTheme: CountryListThemeData(
                            flagSize: 25,
                            backgroundColor: Colors.white,
                            textStyle: const TextStyle(fontSize: 16, color: Colors.blueGrey),
                            bottomSheetHeight: 500, // Optional. Country list modal height
                            //Optional. Sets the border radius for the bottomsheet.
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                            //Optional. Styles the search field.
                            inputDecoration: InputDecoration(
                              labelText: 'Search',
                              hintText: 'Start typing to search',
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: const Color(0xFF8C98A8).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ),
                          onSelect: (Country country) =>{
                            setState((){
                              flag=country.flagEmoji;
                              print(flag);
                              countryName=country.name;
                            })
                          },
                        );
                      },
                          child: const Text("Change",style: TextStyle(color: buttonColor,
                              fontSize: 16,fontWeight: FontWeight.w700),))
                    ],
                  ),
                ),
                const SizedBox(height: 50,),
                const Text("Verification Method",style:tileStyle,),
                SizedBox(height: 20,),
                ListTile(
                  leading: Radio<String>(
                    value: 'passport',
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                  title: const Text('Passport',style: tileStyle,),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'idCard',
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                  title: const Text('ID Card',style: tileStyle,),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: NeumorphicButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>ScanCard()));
                        },
                        style:  NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                            color: buttonColor,
                            depth: 4,
                            intensity: 2,
                            surfaceIntensity: 2),
                        child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            )),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
