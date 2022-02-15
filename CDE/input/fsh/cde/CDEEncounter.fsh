Profile:        CDEEncounter
Parent:         Encounter
Id:             ejprd-cde-encounter
Title:          "EJP-RD CDE Encounter"
Description:    "FHIR Encounter profile for the Common Data Elements model of the EJP RD."

// Cardinalities used elements
* identifier 1..1 // CDE model element: Pseudonym.identifier
* status 1..1 // Finished (first contact with specialized center)
* class 1..1 // First Confirmed Visit (NCIt)
* subject 1..1 // CDE Patient Resource
* period 1..1 // CDE model element: 
* period.start 0..0
* period.end 1..1 // CDE model element: Care Pathway.Date of first contact with specialised centre

// Remove unused elements
* diagnosis 0..0
* partOf 0..0
* statusHistory 0..0
* classHistory 0..0
* type 0..0
* serviceType 0..0
* priority 0..0
* episodeOfCare 0..0
* basedOn 0..0
* participant 0..0
* appointment 0..0
* length 0..0
* reasonCode 0..0
* reasonReference 0..0
* account 0..0
* hospitalization 0..0
* location 0..0
* serviceProvider 0..0

// Further specification of elements
* status = http://hl7.org/fhir/encounter-status#finished "Finished"
* class = $NCIT#C159705 "First Confirmed Visit"
* subject only Reference(CDEPatient)