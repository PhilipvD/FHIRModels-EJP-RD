// Instance (sample data)
Instance:  ConditionCDE
InstanceOf: CDECondition
Title:   "Example Condition"
Usage:  #example

* subject = Reference(PatientCDE)
* onset[x].value = 46
* recordedDate = 2021-01-20
* code[diagnosisCode] = $ORDO#Orphanet_454 "Acquired ichthyosis"
* code[geneticDiagnosisCode] = $HGNC#HGNC:11777 "TGM1"