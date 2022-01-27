Profile:        MimicPatient
Parent:         Patient
Id:             mimic-patient
Title:          "MIMIC-ED Patient"
Description:    "A MIMIC-ED patient."

// Define must support elements
* identifier MS

// Cardinalities used elements
* identifier 1..1 // edstays: subject_id

// Remove unused elements
* active 0..0
* name 0..0
* telecom 0..0
* gender 0..0
* birthDate 0..0
* deceased[x] 0..0
* address 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* generalPractitioner 0..0
* managingOrganization 0..0
* link 0..0