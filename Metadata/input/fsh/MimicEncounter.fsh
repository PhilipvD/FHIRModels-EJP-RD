Profile:        MimicEncounter
Parent:         Encounter
Id:             mimic-encounter
Title:          "MIMIC-ED Encounter"
Description:    "An Encounter resource that represents each stay_id (ED stay) record in MIMIC-ED."

// Define must support elements
* identifier and status and class and subject and period and diagnosis MS

// Cardinalities used elements
* identifier 1..1 // edstays: stay_id
* status 1..1 // finished
* class 1..1 // EMER
* subject 1..1 // Reference(Patient)
* period 1..1 
* period.start 1..1 // edstays:intime
* period.end 1..1 // edstays:outtime
* diagnosis 1..1 
* diagnosis.condition 1..1 // Reference(Condition)
* diagnosis.use 1..1 // DD
* diagnosis.rank 1..1 // diagnosis:seq_num
* partOf 0..1 // Reference(Encounter)

// Remove unused elements
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
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER "emergency"
* subject only Reference(MimicPatient)
* diagnosis.condition only Reference(MimicCondition)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#DD "Discharge diagnosis"
* partOf only Reference(MimicEncounter)