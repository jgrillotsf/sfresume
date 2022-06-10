# Run book for a New Ord
This runbook outlines all the manual steps for setting up a new org.

## Pre-Deployment
None

## Post-Deployment
### Unsupported Metadata
1. Assign Record Types - go to Object manager, select the Object, click Page Layout > Page Layout Assignments
    1. User (Profile Page Layout): Set all to ```sfresume```
    1. Experience:
        1. Educational : Educational Experience Layout
        1. Professional: Professional Experience Layout
### S-DOCS Setup
1. In Setup, go to Object Manager and open the SDoc Template object
1. Click on Fields & Relationships
1. Open the "Related To Type" field
1. Add the Value ```User``` and make it the Default
1. In the Object manager, click on Page Layouts
1. Edit the SDoc Template Layout
1. Click the Wrench under ```Salesforce Mobile and Lightning...```
1. Drag the ```Template Editor``` button to the front.
1. Click Save.
1. Open the App Manager and open ```S-Docs Templates```
1. Click New and enter in the following values:
    1. Template Name: ```Resume - PDF```
    1. Description: ```PDF Version of the Resume```
    1. Related To Type: ```User```
    1. Template Format: ```PDF```
    1. Click Save
1. Click on the ```Template Editor``` button
1. In the template body, click on the ```Source``` button
1. Copy the contents from /scripts/SDOCS/Resume-PDF.html from this repo into the editor.
1. Click on the ```Header``` tab
    1. Insert the LinkedIn and Trailhead fields
    1. Click on the ```Header on Remaining Pages``` bar
    1. Uncheck "Use first page header for all pages"
    1. Insert Full Name field
1. Click ```Save and Close```