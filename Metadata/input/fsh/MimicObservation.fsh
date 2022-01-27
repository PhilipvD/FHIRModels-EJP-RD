Alias: $LNC = http://loinc.org
Alias: $UCUM = http://unitsofmeasure.org

Profile:        MimicObservationVitalSign
Parent:         observation-vitalsigns
Id:             mimic-observation-vitalsigns
Title:          "MIMIC-ED Observation"
Description:    "An Observation resource that represents a single measurement from a row of the triage and vitalsign tables of MIMIC-ED: only temperatature, heartrate, resprate, blood pressure sbp dbp, and o2sat."

// Define must support elements
* partOf and status and subject and encounter and effective[x] and category MS

// Cardinalities used elements
* partOf 1..1 // Reference(Procedure)
* status 1..1 // final
* subject 1..1 // Reference(Patient)
* encounter 1..1 // Reference(Encounter)
* effective[x] 1..1
* effectiveDateTime 1..1 // edstays:intime (triage) or vitalsign:charttime (for vital signs)
* category 1..1
* code 1..1
* value[x] 0..1
* dataAbsentReason 0..1
* component 0..2

// Remove unused elements
* identifier 0..0
* basedOn 0..0
* focus 0..0
* issued 0..0
* performer 0..0
* interpretation 0..0
* note 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0

// Further specification of elements
* partOf only Reference(MimicProcedure)
* status = http://hl7.org/fhir/observation-status#final "Final"
* subject only Reference(MimicPatient)
* encounter only Reference(MimicEncounter)
* effective[x] only dateTime
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code from ObservationTypeMimic
* value[x] only valueQuantity
* valueQuantity from QuantityUnitMimic
* dataAbsentReason.CodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown "Unknown"
* dataAbsentReason.CodeableConcept.text = "The value is expected to exist but is not known."

// Value sets
ValueSet: ObservationTypeMimic
Id: mimic-observation-type
Title: "MIMIC-ED Observation Resource Types Value Set"
Description: "Selected codes from LOINC that represent values from the triage or vitalsigns tables of MIMIC-ED."
* $LNC#8310-5 "Body temperature" // temp
* $LNC#8867-4 "Heart rate" // heartrate
* $LNC#9279-1 "Respiratory rate" // resprate
* $LNC#2708-6 "Oxygen saturation in Arterial blood" // o2sat
* $LNC#85354-9 "Blood pressure panel with all children optional" // sbp and dbp (component)

ValueSet: QuantityUnitMimic
Id: mimic-unit-quantity
Title: "MIMIC-ED Observation Quantity Units Value Set"
Description: "Selected codes from UCUM that represent quantity units."
* $UCUM#degF "F" // triage:temperature / vitalsign:temperature
* $UCUM#/min "beats/minute" // triage:heartrate / vitalsign:heartrate
* $UCUM#/min "breaths/minute" // triage:resprate / vitalsign: resprate
* $UCUM#% "%" // triage:o2sat / vitalsign:o2sat

  
// ValueSet: ObservationCategoryMimic
// Id: mimic-observation-category
// Title: "MIMIC-ED Observation Resource Category Value Set"
// Description: "Selected codes from the ObservationCategoryCodes value set."
// * http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs" // temp, resprate, heartrate, o2sat, bp
// * http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey" // pain
// * http://terminology.hl7.org/CodeSystem/observation-category#exam "Exam" // rhythm