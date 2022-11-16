/********************************************************************************************
 * ResumePreviewControllerExtension allows for custom lists for the ResumePreview VF Page	*
 * Authored by Jacques Grillot for the sfResume App											*
 * *****************************************************************************************/	
public with sharing class ResumePreviewControllerExtension {
	private final User me;
    
    // Extend the User object controller and get the Record
    public ResumePreviewControllerExtension(ApexPages.StandardController stdController){
        this.me = (User)stdController.getRecord();
    }
    
    // Declare the list for Certifications
    public List<Achievement__c> certifications;
    // Build a list of Achievements
    public List<Achievement__c> getCertifications(){
        if(certifications == null){
            certifications = [SELECT Id, Name, Sort_Order__c 
                                                    FROM Achievement__c
                                                    WHERE User__r.Id = :me.Id WITH SECURITY_ENFORCED
                                                    ORDER BY Sort_Order__c];
        }
        // Return the certification records for rendering
        return certifications;
    }
    
    // Declare the list for Skills
    public List<Skillset__c> skills;
    // Build a list of Skills
    public List<Skillset__c> getSkills(){
        if(skills == null){
            skills = [SELECT Id, Name, Type__c, Skills__c
                                    FROM Skillset__c
                                    WHERE User__r.Id = :me.Id WITH SECURITY_ENFORCED
                                    ORDER BY Type__c];
        }
        // Return the skill records for rendering
        return skills;

    }
    
    // Declare a list for Jobs
    public List<Experience__c> jobs;
    // Build a list of Experiences filtering for Professional experiences
    public List<Experience__c> getJobs(){
        if(jobs == null){
            jobs = [SELECT Id, Name, Title__c, Account__r.Name, Summary__c, Start_Date__c, End_Date__c
                                FROM Experience__c
                                WHERE User__r.Id = :me.Id
                                AND RecordType.Name='Professional' WITH SECURITY_ENFORCED
                                ORDER BY Start_Date__c DESC];
        }
        return jobs;
    }
    
    // Declare a list for Educational accomplishments
    public List<Experience__c> edus;
    // Build a list of Experiences filtering for Educational experiences
    public List<Experience__c> getEdus(){
        if(edus == null){
            edus = [SELECT Id, Name, Degree_Earned__c, Account__r.Name, Summary__c, End_Date__c
                                FROM Experience__c
                                WHERE User__r.Id = :me.Id
                                AND RecordType.Name='Educational' WITH SECURITY_ENFORCED
                                ORDER BY End_Date__c DESC];
        }
        return edus;
    }
}