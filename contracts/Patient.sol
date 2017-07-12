pragma solidity ^0.4.2;

contract Patient {

  string public name;
  string public dateOfBirth;
  string public gender;

  // Event that is fired when patient is changed
  event PatientChanged(string whatChanged);

  // FAMILY^GIVEN^MIDDLE
  function SetName(string _name) {
    name = _name;
    PatientChanged("name"); // fire the event
  }
  // YYYYMMDD
  function SetDateOfBirth(string _dateOfBirth) {
    dateOfBirth = _dateOfBirth;
    PatientChanged("dateOfBirth"); // fire the event
  }
  // M,F,U,O
  function SetGender(string _gender) {
    gender = _gender;
    PatientChanged("gender"); // fire the event
  }

  function SetPatient(string _name, string _dateOfBirth, string _gender) {
    name = _name;
    dateOfBirth = _dateOfBirth;
    gender = _gender;
    PatientChanged("Patient"); // fire the event
  }
}
