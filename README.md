# Salesforce DX Project: sfresume

Build your resume on the force.com platform with Salesforce DX and CumulusCI.cd 

### NOTE
This app provides the structure to manage a resume only, this does not provide a exportable resume. You can build functionality using SDOCS or QUIP. 

## Development

To work on this project in a scratch org:

1. [Set up CumulusCI](https://cumulusci.readthedocs.io/en/latest/tutorial.html)
1. LIST all Orgs: `cci org list`
1. DEVELOP on this project: `cci flow run dev_org --org dev`
1. OPEN an org: `cci org browser dev` (This works with Remote SSH as well)
1. PULL CHANGES from org `cci task run retrieve_changes --org dev` 
1. DELETE a Scratch Org: `cci org scratch_delete ORGNAME`