Alias: $DUO = http://purl.obolibrary.org/obo/DUO_
Alias: $OBI = http://purl.obolibrary.org/obo/OBI_
Alias: $ICO = http://purl.obolibrary.org/obo/ICO_
Alias: $OBIB = http://purl.obolibrary.org/obo/OBIB_

Profile:        CDEQuestionnaire
Parent:         Questionnaire
Id:             ejprd-cde-questionnaire
Title:          "EJP-RD CDE Questionnaire"
Description:    "FHIR Questionnaire profile for the Common Data Elements model of the EJP RD."

// Cardinalities used elements
* status 1..1 
* subjectType 1..1
* item 1.. // Four total questions 
* item.linkId 1..1 // Unique ID for item in questionnaire
* item.code 1..1 // Terminology code from CDE for question
* item.text 1..1 // Question
* item.type 1..1
* item.required 1..1
* item.answerValueSet 0..1
* item.answerOption 0..

// Further specification of elements
* status = 	http://hl7.org/fhir/publication-status#active "Active" // Status: active (default element)
* subjectType = http://hl7.org/fhir/resource-types#Patient "Patient" // The subject of a QuestionnaireResponse will always be a Patient resource
* item.type = http://hl7.org/fhir/item-type#choice "Choice" // Answers are codes
* item.required = true

// Value sets
ValueSet: ConsentCodes
Id: ejprd-consent-codes
Title: "EJP RD CDE Consent Codes Value Set"
Description: "Consent answer options codes for answering the 'research' part of the CDE model."
* include $DUO#0000001 "data use permission"
* include $DUO#0000042 "general research use"
* include $DUO#0000006 "health or medical or biomedical research"
* include $DUO#0000007 "disease specific research"
* include $DUO#0000004 "no restriction"
* include $DUO#0000011 "population origins or ancestry research only"

