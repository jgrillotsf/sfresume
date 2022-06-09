# Salesforce DX Project: sfresume

Build your resume on the force.com platform with Salesforce DX and CumulusCI.cd 

### NOTE
This app provides the structure to manage a resume only, this does not provide a exportable resume. You can build functionality using SDOCS or QUIP. 

## Development

To work on this project in a scratch org:

1. [Set up CumulusCI](https://cumulusci.readthedocs.io/en/latest/tutorial.html)
1. Run `cci flow run dev_org --org dev` to deploy this project.
1. Run `cci org browser dev` to open the org in your browser. (This works with Remote SSH as well).
1. Run `cci task run retrieve_changes --org dev` to pull changes.
1. DELETE a Scratch Org: `cci org scratch ORGNAME`