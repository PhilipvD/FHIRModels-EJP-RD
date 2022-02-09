Alias: $ORDO = http://www.orpha.net/ORDO/
Alias: $ICD-10 = http://hl7.org/fhir/sid/icd-10
Alias: $ICD-9-CM = http://hl7.org/fhir/sid/icd-9-cm
Alias: $HGVS = http://varnomen.hgvs.org
Alias: $HGNC = http://www.genenames.org
Alias: $OMIM = http://www.omim.org

Profile:        CDECondition
Parent:         Condition
Id:             ejprd-cde-condition
Title:          "EJP-RD CDE Condition"
Description:    "FHIR Condition profile for the Common Data Elements model of the EJP RD."

// Cardinalities used elements
* subject 1..1 // Reference(CDEPatient)
* onset[x] 1..1 // CDE model element: Disease history - Age at onset
* recordedDate 1..1 // CDE model element: Disease history - Age at diagnosis (no age, so infer age using birth date)
* code 1..1 // CDE model element: Diagnosis (rare disease and genetic)

// Cardinalities unused elements
* identifier 0..0
* clinicalStatus 0..0
* verificationStatus 0..0
* category 0..0
* severity 0..0
* bodySite 0..0
* abatement[x] 0..0
* recorder 0..0
* asserter 0..0
* stage 0..0
* evidence 0..0
* note 0..0
* encounter 0..0

// Further specification of elements
* subject only Reference(CDEPatient)
* onset[x] only Age

// Slicing logic of code (diagnosis and genetic diagnosis code)
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code.coding"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slice based on the code pattern"

// Define slices
* code.coding contains
       diagnosisCode 1..1 and
       geneticDiagnosisCode 1..1
* code.coding[diagnosisCode] from RareDiseaseDiagnosisCodes
* code.coding[geneticDiagnosisCode] from GeneticDiagnosisCodes

// Value set for rare disease diagnosis codes
ValueSet: RareDiseaseDiagnosisCodes
Id: ejprd-diagnosis-codes
Title: "EJP RD CDE Rare Disease Diagnosis Codes Value Set"
Description: "Codes for the diagnosis of a rare disease from relevant code systems."
* include codes from system $ORDO
* include codes from system $ICD-9-CM
* include codes from system $ICD-10
* include $NCIT#C113725 "Undiagnosed" // Include undiagnosed code from NCIt

// Value set for genetic diagnosis codes
ValueSet: GeneticDiagnosisCodes
Id: ejprd-genetic-diagnosis-codes
Title: "EJP RD CDE Genetic Diagnosis Codes Value Set"
Description: "Codes for the genetic diagnosis from relevant code systems."
* include codes from system $HGVS
* include codes from system $HGNC
* include codes from system $OMIM
* include $NCIT#C113725 "Undiagnosed" // Include undiagnosed code from NCIt