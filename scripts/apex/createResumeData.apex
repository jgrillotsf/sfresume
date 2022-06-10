// This script creates related records for the Resume. Execute this file in the Anonymous Apex Window
// Get the User's Id
Id UserId = UserInfo.getUserId();

////////// ACHIEVEMENT TEST RECORDS //////////
// Instantiate a list of Certifications
List<Achievement__c> certifications = new List<Achievement__c>();

// Populate the list with 8 Certifications
for(integer i=0; i<8; i++){
    Achievement__c cerification = new Achievement__c(Name = 'Certification' + i+1, User__c = UserId, Sort_Order__c = i+1);
    certifications.add(cerification);
}
// Create the Certification Achievements
insert certifications;

////////// SKILLSET TEST RECORDS //////////
// Create a List of Skills
List<Skillset__c> skills = new List<Skillset__c>();
// Create the Softskills record and att it to the skill list
Skillset__c softSkills = new Skillset__c(User__c = UserId, Type__c='Soft', Skills__c='List of my Soft Skills');
skills.add(softSkills);
// Create the Softskills record and att it to the skill list
Skillset__c techSkills = new Skillset__c(User__c = UserId, Type__c='Technical', Skills__c='List of my Technical Skills');
skills.add(techSkills);
// Create the Skillset Records
insert skills;

////////// ACCOUNT TEST RECORDS //////////
// Instantiate a list of Employer Accounts
List<Account> testAccounts = new List<Account>();
// Create 3 Employer Accounts
for(integer e=0; e<3; e++){
    testAccounts.add(new Account(Name= 'Employer '+e));
}
// Create an Education Account
testAccounts.add( new Account(name = 'University of Nimbus'));
// Insert the Account records
insert testAccounts;

////////// EXPERIENCE TEST RECORDS //////////
// Instantiate a list of Professional Experiences
List<Experience__c> experiences = new List<Experience__c>();
// Get the record Type Id for Pro Experience
Id proXRT = Schema.SObjectType.Experience__c.getRecordTypeInfosByName().get('Professional').getRecordTypeId();
// Create a list of professional Experiences
for(integer x=0; x<3; x++){
    integer y = x-1;
    experiences.add(new Experience__c(User__c = UserId, Account__c=testAccounts[x].id, Title__c='Architect', RecordTypeId = proXRT, Summary__c='Stuff I did.', Start_Date__c=System.today().addYears(-y), End_Date__c=System.today().addYears(-x)));
}
// Get the record Type Id for Edu Experience
Id eduXRT = Schema.SObjectType.Experience__c.getRecordTypeInfosByName().get('Educational').getRecordTypeId();
// Add an Educational Experience to the Experience list
experiences.add(new Experience__c(User__c = UserId, Account__c=testAccounts[3].id, Degree_Earned__c='B.S. Cloud Architecture', RecordTypeId = eduXRT, Summary__c='Minor: Active Listening', Start_Date__c=System.today().addYears(-9), End_Date__c=System.today().addYears(-5)));
// Insert the Experience records
insert experiences;