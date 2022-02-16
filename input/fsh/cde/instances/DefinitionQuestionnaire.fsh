// Instance of the Questionnaire (definition)
Instance:  QuestionnaireCDE
InstanceOf: CDEQuestionnaire
Title:   "CDE Questionnaire definition"
Usage:  #definition

* item[+].linkId = "agreement-to-be-contacted"
* item[=].code = $OBI#0000810 "informed consent process"
* item[=].text = "Agreement to be contacted for research purposes"
* item[=].answerOption[+].valueCoding = $OBIB#0000488 "willingness to be contacted for a research study"
* item[=].answerOption[+].valueCoding = $NCIT#C49487 "No"
* item[=].required = true

* item[+].linkId = "reuse-consent"
* item[=].code = $ICO#0000001 "informed consent form"
* item[=].text = "Consent to the reuse of data"
* item[=].answerValueSet = Canonical(ConsentCodes)
* item[=].required = true

* item[+].linkId = "biological-sample"
* item[=].code = $OBI#0000659 "specimen collection process"
* item[=].text = "Biological sample"
* item[=].answerOption[+].valueCoding = $NCIT#C49488 "Yes"
* item[=].answerOption[+].valueCoding = $NCIT#C49487 "No"
* item[=].required = true

* item[+].linkId = "biobank-link"
* item[=].code = $OMIABIS#0000010 "biobank organization"
* item[=].text = "Link to a biobank"
* item[=].answerOption[+].valueCoding = $NCIT#C49488 "Yes"
* item[=].answerOption[+].valueCoding = $NCIT#C49487 "No"
* item[=].enableWhen.question = "biological-sample" // Only enable this question when answered YES for Biological sample question
* item[=].enableWhen.operator = http://hl7.org/fhir/questionnaire-enable-operator#exists "Exists"
* item[=].enableWhen.answerString = "YES"
* item[=].required = false
