// Instance (sample data)
Instance:  ConditionCDE
InstanceOf: CDECondition
Title:   "Example Condition"
Usage:  #example

* subject = Reference(PatientCDE)
* onsetAge.value = 46
* recordedDate = 2021-01-20
* code.coding[diagnosisCode] = $ORDO#Orphanet_454 "Acquired ichthyosis"
* code.coding[geneticDiagnosisCode] = $HGNC#HGNC:11777 "TGM1"