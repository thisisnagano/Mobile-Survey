SELECT
    name,
    sfid,
    survey_type__c,
    first_question__c,
    grading_scale__c,
    total_possible_score__c
FROM
    dms_survey__c 
WHERE 
    (Active__c is null or Active__c = true) 
    and (IsParent__c is null or IsParent__c = false) 
    and parent_survey__c is null 
ORDER BY
    sfid