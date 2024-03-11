import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {

  String? selectedGender;
  TextEditingController _dateController = TextEditingController();

  void chooseProfileImage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(
            child: Text(
              'Change your picture',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
          ),
          content: Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9, // Custom width
              height: MediaQuery.of(context).size.height * 0.25, // Custom height
              child: Column(
                children: [
                  ListTile(
                    shape: const StadiumBorder(),
                    tileColor: AppColorConstant.appText2Color.shade100,
                    leading: const Icon(Icons.camera_alt),
                    title: const Text('Take a photo', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                  ),
                  const SizedBox(height: 10,),
                  ListTile(
                    shape: const StadiumBorder(),
                    tileColor: AppColorConstant.appText2Color.shade100,
                    leading: const Icon(Icons.file_copy_rounded),
                    title: const Text('Choose from your file', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                  ),
                  const SizedBox(height: 10,),
                  ListTile(
                    shape: const StadiumBorder(),
                    tileColor: AppColorConstant.appText2Color.shade100,
                    leading: const Icon(Icons.delete, color: AppColorConstant.appMainColor,),
                    title: const Text('Delete photo', style: TextStyle(fontWeight: FontWeight.w600, color: AppColorConstant.appMainColor, fontSize: 18),),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorConstant.appStatusBarColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: AppColorConstant.appArowbackColor),
        ),
        title: const Text('Profile', style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.lightGreen.shade100,
                        radius: 50,
                        child: const Icon(Icons.person_outline, size: 35),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: () {
                          chooseProfileImage(); // Call the function here
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColorConstant.appScendoryColor,
                            border: Border.all(
                              color: Colors.white, // Border color
                              width: 1, // Border width
                            ),
                          ),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                'First Name',
                style: TextStyle(fontSize: 18, color: AppColorConstant.appTextColorblack54),
              ),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  hintText: 'First name',
                  hintStyle: const TextStyle(color: AppColorConstant.appText2Color),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: AppColorConstant.appScendoryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: AppColorConstant.appScendoryColor),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Last Name',
                style: TextStyle(fontSize: 18, color: AppColorConstant.appTextColorblack54),
              ),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Last name',
                  hintStyle: const TextStyle(color: AppColorConstant.appText2Color),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: AppColorConstant.appScendoryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: AppColorConstant.appScendoryColor),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'E-mail',
                style: TextStyle(fontSize: 18, color: AppColorConstant.appTextColorblack54),
              ),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  hintText: 'example@gmail.com',
                  hintStyle: const TextStyle(color: AppColorConstant.appText2Color),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: AppColorConstant.appScendoryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: AppColorConstant.appScendoryColor),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Date of Birth',
                style: TextStyle(fontSize: 18, color: AppColorConstant.appTextColorblack54),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: _dateController,
                readOnly: true, // Make the text field read-only
                decoration: InputDecoration(
                  hintText: 'yyyy-mm-dd',
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _selectDate(context);
                    },
                    child: const Icon(
                      Icons.edit_calendar_outlined,
                      color: AppColorConstant.appScendoryColor,
                    ),
                  ),
                  hintStyle: const TextStyle(color: AppColorConstant.appText2Color),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: AppColorConstant.appScendoryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: AppColorConstant.appScendoryColor),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Gender',
                style: TextStyle(fontSize: 18, color: AppColorConstant.appTextColorblack54),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColorConstant.appScendoryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Radio<String>(
                          value: 'Male',
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                          activeColor: AppColorConstant.appScendoryColor,
                        ),
                        const Text('Male', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColorConstant.appScendoryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Radio<String>(
                          value: 'Female',
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                          activeColor: AppColorConstant.appScendoryColor,
                        ),
                        const Text('Female', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Location',
                style: TextStyle(fontSize: 18, color: AppColorConstant.appTextColorblack54),
              ),
              const SizedBox(height: 5),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'Gorakhpur, Uttar Pradesh, India\n Postal code - 273001',
                  hintStyle: const TextStyle(color: AppColorConstant.appText2Color),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: AppColorConstant.appScendoryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: AppColorConstant.appScendoryColor),
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add your save changes logic here
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                      Size(
                        MediaQuery.of(context).size.width * 0.9, // Adjust the width factor as needed
                        60, // Adjust the height as needed
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(AppColorConstant.appScendoryColor),
                  ),
                  child: const Text(
                    'Save Changes',
                    style: TextStyle(fontSize: 20, color: AppColorConstant.appTextColor),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  // Function to show the date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null && pickedDate != DateTime.now()) {
      // Update the text field with the selected date
      _dateController.text = pickedDate.toLocal().toString().split(' ')[0];
    }
  }
}


