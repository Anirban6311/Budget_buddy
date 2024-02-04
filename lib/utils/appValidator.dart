class AppValidator{
  String? validateName(value){
    if(value!.isEmpty)
    {
      return "Enter Username";
    }
    return null;
  }
  String? validateEmail(value) {
    if (value!.isEmpty) {
      return "Please enter email";
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) { // Use negation here to check for invalid emails
      return "Please enter valid email";
    }

    return null; // Return null for valid emails
  }
  String? validatePass(value) {
    if (value!.isEmpty) {
      return "Please enter password";
    }

    return null; // Return null for valid emails
  }
  String? validatePhone(value){
    if(value!.isEmpty){
      return "Please enter phone number";
    }
    if(value!.length!=10)
    {
      return "Please enter valid phone number";
    }

    return null;

  }

}