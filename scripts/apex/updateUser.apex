// This script is to Update the User's details. Execute this file in the Anonymous Apex Window
// Get the User's Id
Id UserId = UserInfo.getUserId();
// Get the User Record
User UpdateUser = [SELECT Id, LastName, FirstName, CompanyName, Title, City, State, Phone, MobilePhone, AboutMe, LinkedIn_Profile__c, Trailhead_Profile__c FROM User WHERE Id = :UserId];
// Set the Values
UpdateUser.FirstName = 'Jacques';
UpdateUser.LastName = 'Grillot';
UpdateUser.CompanyName = 'Salesforce';
UpdateUser.Title = 'Salesforce Architect';
UpdateUser.City = 'Charles Town';
UpdateUser.State = 'WV';
UpdateUser.Phone = '2025367670';
UpdateUser.MobilePhone = '2025367670';
UpdateUser.AboutMe = 'Salesforce Architect specializing in improving DevOps, Agile, and Security practices for Salesforce\'s premier customers ranging from high-tech to public sector.';
UpdateUser.LinkedIn_Profile__c = 'https://www.linkedin.com/in/jacquesgrillot/';
UpdateUser.Trailhead_Profile__c = 'https://trailblazer.me/id/jgrillot1';
// Update the User Record
update UpdateUser;

