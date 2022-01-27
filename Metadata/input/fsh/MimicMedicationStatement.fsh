Alias: $NDC = http://hl7.org/fhir/sid/ndc
Alias: $ETCID = https://ushik.ahrq.gov/ViewItemDetails?itemKey=201395000
Alias: $GSN = urn:uuid:28f5756c-f597-403c-bff7-d46cf4770f53

Profile:        MimicMedicationStatement
Parent:         MedicationStatement
Id:             mimic-medicationstatement
Title:          "MIMIC-ED MedicationStatement"
Description:    "An MedicationStatement resource that represents each record in the medrecon table of MIMIC-ED."

// Define must support elements
* status and medication[x] and subject and context and dateAsserted MS

// Cardinalities used elements
* status 1..1 // Unknown
* medication[x] 1..1
* medicationCodeableConcept.coding 1..
* medicationCodeableConcept.text 1..1 // medrecon: name
* subject 1..1 // Reference(Patient)
* context 1..1 // Reference(Encounter)
* dateAsserted 1..1 // medrecon: charttime

// Remove unused elements
* identifier 0..0
* basedOn 0..0
* partOf 0..0
* statusReason 0..0
* category 0..0
* effective[x] 0..0
* informationSource 0..0
* derivedFrom 0..0
* reasonCode 0..0
* reasonReference 0..0
* note 0..0
* dosage 0..0

// Further specification of elements
* status = http://hl7.org/fhir/CodeSystem/medication-statement-status#unknown "Unknown"
* medication[x] only CodeableConcept
* subject only Reference(MimicPatient)
* context only Reference(MimicEncounter)

// Slicing logic of medication[x] coding (multiple codes: gsn, ndc, etccode)
* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "code"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding ^slicing.description = "Slice based on the medicationCodeableConcept.code pattern"

// Define slices
* medicationCodeableConcept.coding contains
       gsnCode 0..1 and
       ndcCode 0..1 and
       etccodeCode 0..1
* medicationCodeableConcept.coding[gsnCode] from $GSN // No defined code system.. 
* medicationCodeableConcept.coding[ndcCode] from $NDC
* medicationCodeableConcept.coding[etccodeCode] from $ETCID // URL correct but no defined code system..