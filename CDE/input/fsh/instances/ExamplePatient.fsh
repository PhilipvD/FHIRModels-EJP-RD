// Instance (sample data)
Instance:  PatientCDE
InstanceOf: CDEPatient
Title:   "Example Patient"
Usage:  #example

* identifier.value = "EUPID123"
* birthDate = 1960-05-20
* deceased[x] = 2021-02-07T13:28:17.239+02:00
* extension[BirthSex].valueCode = $NCIT#C16576 "Female"
* extension[StudyStatus].valueCode = $SIO#SIO:010059 "dead"
* extension[disability].valueCodeableConcept = $NCIT#C3891 "Color Blindness"
