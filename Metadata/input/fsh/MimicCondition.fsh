Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10
Alias: $ICD9 = http://hl7.org/fhir/sid/icd-9-cm 

Profile:        MimicCondition
Parent:         Condition
Id:             mimic-condition
Title:          "MIMIC-ED Condition"
Description:    "Condition resource that represents records in the diagnosis table of MIMIC-ED."

// Define must support elements
* subject and encounter and code MS

// Cardinalities used elements
* subject 1..1 // Reference(Patient)
* encounter 1..1 // Reference(Encounter)
* code 1..1 // CodeableConcept with LOINC code from MIMIC-ED diagnosis table

// Cardinalities unused elements
* identifier 0..0
* clinicalStatus 0..0
* verificationStatus 0..0
* category 0..0
* severity 0..0
* bodySite 0..0
* onset[x] 0..0
* abatement[x] 0..0
* recordedDate 0..0
* recorder 0..0
* asserter 0..0
* stage 0..0
* evidence 0..0
* note 0..0

// Further specification of elements
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
* code from DiagnosisCodesICD

// Value sets
ValueSet: DiagnosisCodesICD
Id: mimic-diagnosis-codes-icd
Title: "MIMIC-ED Diagnosis ICD Codes Value Set"
Description: "All ICD9 and ICD10 codes."
* include codes from system $ICD9
* include codes from system $ICD10
