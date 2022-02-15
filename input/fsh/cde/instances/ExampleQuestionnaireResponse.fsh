// Instance (sample data)
Instance:  QuestionnaireResponseCDE
InstanceOf: CDEQuestionnaireResponse
Title:   "Example QuestionnaireResponse"
Usage:  #example

* subject = Reference(PatientCDE)

* item[+].linkId = "agreement-to-be-contacted"
* item[=].answer.valueCoding = $OBIB#0000488 "willingness to be contacted for a research study"

* item[+].linkId = "reuse-consent"
* item[=].answer.valueCoding = $DUO#0000006 "health or medical or biomedical research"

* item[+].linkId = "biological-sample"
* item[=].answer.valueString = "YES"

* item[+].linkId = "biobank-link"
* item[=].answer.valueString = "YES"
