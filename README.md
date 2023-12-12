# marisapereira
Website for Marisa Pereira.

resourceID definition table
|-----------------------------------------------------------------------------------------------------------------------------|
| Resource         |  ID                |  AbbreviationID    |   ResultID         |  Table Name            | Database Name    |
|------------------|--------------------|--------------------|--------------------|------------------------|------------------|
|  segurosaudeprov |  0100              |   insprovid        |                    |  seguradoras_saude     | marisapereiraweb |
|------------------|--------------------|--------------------|--------------------|------------------------|------------------|
|  Medico          |  01000             |   docid            |                    |  medicos               | marisapereiraweb |
|------------------|--------------------|--------------------|--------------------|------------------------|------------------|
|  Paciente        |  02000             |   patid            |                    |  pacientes             | marisapereiraweb |
|------------------|--------------------|--------------------|--------------------|------------------------|------------------|
|  Apontamentos    |  03000             |   patapptid        |  patid+patapptid   |  apontamentos          | marisapereiraweb |
|------------------|--------------------|--------------------|--------------------|------------------------|------------------|
------------------------------------------------------------------------------------------------------------------------------|
resourceID definition table



#!!!!NOTE!!!!!
# Rules that apply for all changes on any file of the web application marisapereira.ddns.net
# After a branch is closed because of its completion, a new child version is to be set. As an example, this file is the description of the changes made in the branch
# name identified below: #br_feature_loginpage_Or_CreateAneWaccount and the version of the application is 0.1.5. After this branch is closed, the new version shall
# be renamed to 0.1.6. When applying branch updates, it is the child that changes. When merging to the main branch, its the main name that changes.
# In order to help identifying the versioning structure, please read below:
# v.0.1.5 -> v=Version,0=MainVersion,1=PreVersion,5=ChildVersion



Details:

url: https://marisapereira.ddns.net

BranchName: br_feature_loginpage_Or_CreateAneWaccount


# FEATURES ADDING
#
# - Create the login page at login.html
# - On the index.html page display the login button on the top right corner of the page
# - On the newly created login button, have a url redirecting to the login.html on button click
#
#
#
#
# If account already exists >
#                            Login fields pop-up;
#                                         Validate Fields: User, Password
# If account does not exist >
#                            @login.html page >
#                                             Create account h1
# 					      Fields to ask:
#
#                                                     - Validate User: Min=8, Max=20 <-
#						      - Validate Email:  <-
#						      - Validate Password: <-
#						      #Here, probably with .JS, salt and base64 encode the Password before writting to db.
#
#
#
#
#
#
#
#
#

