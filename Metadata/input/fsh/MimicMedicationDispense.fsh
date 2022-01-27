Alias: $GSN = urn:uuid:28f5756c-f597-403c-bff7-d46cf4770f53

Profile:        MimicMedicationDispense
Parent:         MedicationDispense
Id:             mimic-medicationdispense
Title:          "MIMIC-ED MedicationDispense"
Description:    "An MedicationDispense resource that represents each record in the pyxis (ED medication dispensation) table of MIMIC-ED."

// Define must support elements
* status and medication[x] and subject and context and whenHandedOver MS

// Cardinalities used elements
* status 1..1 // Unknown
* medication[x] 1..1
* medicationCodeableConcept.coding 1..
* medicationCodeableConcept.text 1..1 // pyxis: name
* subject 1..1 // Reference(Patient)
* context 1..1 // Reference(Encounter)
* whenHandedOver 1..1 // pyxis: charttime

// Remove unused elements
* identifier 0..0
* partOf 0..0
* statusReason[x] 0..0
* category 0..0
* supportingInformation 0..0
* performer 0..0
* location 0..0
* authorizingPrescription 0..0
* type 0..0
* quantity 0..0
* daysSupply 0..0
* whenPrepared 0..0
* destination 0..0
* receiver 0..0
* note 0..0
* dosageInstruction 0..0
* substitution 0..0
* detectedIssue 0..0
* eventHistory 0..0

// Further specification of elements
* status = http://terminology.hl7.org/CodeSystem/medicationdispense-status#unknown "Unknown"
* medication[x] only CodeableConcept
* subject only Reference(MimicPatient)
* context only Reference(MimicEncounter)
* medicationCodeableConcept.coding from $GSN // pyxis: gsn