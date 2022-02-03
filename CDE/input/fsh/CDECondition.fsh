Profile:        CDECondition
Parent:         Condition
Id:             ejprd-cde-condition
Title:          "EJP-RD CDE Condition"
Description:    "FHIR Condition profile for the Common Data Elements model of the EJP RD."

// Cardinalities used elements
* subject 1..1 // Reference(CDEPatient)
* onset[x] 1..1 // CDE model element: Disease history - Age at onset
* recordedDate 1..1 // CDE model element: Disease history - Age at diagnosis (no age, so infer age using birth date)
* code 1..1 // 

// Cardinalities unused elements
* identifier 0..0
* clinicalStatus 0..0
* verificationStatus 0..0
* category 0..0
* severity 0..0
* bodySite 0..0
* abatement[x] 0..0
* recordedDate 0..0
* recorder 0..0
* asserter 0..0
* stage 0..0
* evidence 0..0
* note 0..0
* encounter 0..0

// Further specification of elements
* subject only Reference(CDEPatient)
* onset[x] only Age


* code from DiagnosisCodesICD

// Slicing logic of code (diagnosis and genetic diagnosis code)
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "code"
* code ^slicing.rules = #open
* code ^slicing.description = "Slice based on the code pattern"

// Define slices
* code contains
       diagnosisCode 0..1 and
       geneticDiagnosisCode 0..1 and
       undiagnosedCode 0..1
* code[diagnosisCode] from 
* code[geneticDiagnosisCode] from 
* code[undiagnosedCode] only 