Alias: $NCIT = http://ncithesaurus-stage.nci.nih.gov
Alias: $SIO = https://semanticscience.org/resource

Profile:        CDEPatient
Parent:         Patient
Id:             ejprd-cde-patient
Title:          "EJP-RD CDE Patient"
Description:    "FHIR Patient profile for the Common Data Elements model of the EJP RD."

// Cardinalities used elements
* identifier 1..1 // CDE model element: Pseudonym.identifier
* birthDate 1..1 // CDE model element: Personal information.Birth date
* deceased[x] 0..1 // CDE model element: Patient status.Date of death 
* extension contains EJPBirthSexExtension named BirthSex 1..1 // CDE model element: Personal information.sex
* extension contains EJPStudyStatusExtension named StudyStatus 1..1 // CDE model element: Patient status.status
* extension contains http://hl7.org/fhir/StructureDefinition/patient-disability named disability 1..1

// Remove unused elements
* active 0..0
* name 0..0
* telecom 0..0
* gender 0..0
* address 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* generalPractitioner 0..0
* managingOrganization 0..0
* link 0..0

// Further specification of elements
* deceased[x] only dateTime

// Extensions
Extension: EJPBirthSexExtension
Id:   ejprd-cde-birthsex
Title:  "EJP RD CDE Birth Sex Extension"
Description: "A code classifying the person's sex assigned at birth."
* value[x] only code
* valueCode from BirthSexCodes

Extension: EJPStudyStatusExtension
Id:   ejprd-cde-studystatus
Title:  "EJP RD CDE Study Status Extension"
Description: "A code classifying the patient's status."
* value[x] only code
* valueCode from StudyStatusCodes 

// Value sets
ValueSet: BirthSexCodes
Id: ejprd-birthsex-codes
Title: "EJP RD CDE Sex at Birth Codes Value Set"
Description: "NCIt sex at birth codes."
* include $NCIT#C16576 "Female"
* include $NCIT#C20197 "Male"
* include $NCIT#C124294 "Undetermined"
* include $NCIT#C17998 "Unknown"

ValueSet: StudyStatusCodes
Id: ejprd-studystatus-codes
Title: "EJP RD CDE Study Status Codes Value Set"
Description: "Study status codes for a patient."
* include $SIO#SIO:010059 "dead"
* include $SIO#SIO:010058 "alive"
* include $NCIT#C70740 "Subject Lost to Follow Up"
* include $NCIT#C124784 "Refusal to Participate"

