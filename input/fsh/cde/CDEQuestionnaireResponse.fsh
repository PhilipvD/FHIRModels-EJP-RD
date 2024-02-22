Profile:        CDEQuestionnaireResponse
Parent:         QuestionnaireResponse
Id:             ejprd-cde-questionnaireresponse
Title:          "EJP-RD CDE QuestionnaireResponse"
Description:    "FHIR QuestionnaireResponse profile for the Common Data Elements model of the EJP RD."

// Cardinalities used elements
* questionnaire 1..1
* status 1..1
* subject 1..1
* item 1..

// Remove unused elements
* identifier 0..0
* basedOn 0..0
* partOf 0..0
* encounter 0..0
* authored 0..0
* author 0..0
* source 0..0

// Further specification of elements
* questionnaire = "https://www.ejprarediseases.org/cde/Questionnaire/QuestionnaireCDE" // NOTE: this is a workaround, as SUSHI does not support Canonical references for instances (not yet, see issue SUSHI#743)
* status = http://hl7.org/fhir/questionnaire-answers-status#completed "Completed"
* subject only Reference(CDEPatient)
