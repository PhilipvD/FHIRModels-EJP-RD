// Instance of the Questionnaire (only 1 for CDE)
Instance:  QuestionnaireCDE
InstanceOf: CDEQuestionnaire
Title:   "CDE Questionnaire definition"
Usage:  #definition

* item[+].linkId = "agreement-to-be-contacted"
* item[=].code = $OBI#0000810 "informed consent process"
* item[=].text = "Agreement to be contacted for research purposes"
* item[=].answerOption[+].valueCoding = $OBIB#0000488 "willingness to be contacted for a research study"
* item[=].answerOption[+].valueString = "NO"

* item[+].linkId = "reuse-consent"
* item[=].code = $ICO#0000001 "informed consent form"
* item[=].text = "Consent to the reuse of data"
* item[=].answerValueSet = Canonical(ConsentCodes)

* item[+].linkId = "biological-sample"
* item[=].code = $OBI#0000659 "specimen collection process"
* item[=].text = "Biological sample"
* item[=].answerOption[+].valueString = "YES"
* item[=].answerOption[+].valueString = "NO"