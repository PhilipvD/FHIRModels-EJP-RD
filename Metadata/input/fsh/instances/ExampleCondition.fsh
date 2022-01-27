Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10
Alias: $ICD9 = http://hl7.org/fhir/sid/icd-9-cm 

Profile:        ExampleCondition
Parent:         Condition
Id:             example-condition
Title:          "Example Condition"
Description:    "Condition resource description."

// Define must support elements
* subject and encounter and code MS

// Cardinalities used elements
* subject 1..1 
* encounter 1..1 
* code 1..1 

// Further specification of elements
* subject only Reference(ExamplePatient)
* encounter only Reference(ExampleEncounter)
* code from DiagnosisCodesICD

// Value sets
ValueSet: DiagnosisCodesICD
Id: diagnosis-codes-icd
Title: "Diagnosis ICD Codes Value Set"
Description: "All ICD9 and ICD10 codes."
* include codes from system $ICD9
* include codes from system $ICD10