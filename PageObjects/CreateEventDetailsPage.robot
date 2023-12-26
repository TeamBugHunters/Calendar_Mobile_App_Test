# Created by SPURGE at 11/23/2023
*** Settings ***
Library     AppiumLibrary

*** Variables ***
${Add-Details-TextBox}      //android.widget.EditText[@text='Add title']
${Toggle-Action}        //android.widget.TextView[@text='All-day']
${Save-Button}          //android.widget.Button[@text='Save']


*** Keywords ***
Create New Event
        [Arguments]     ${event Title}
        Enter Event Title     ${event Title}
        Click All Day Toggle Button
        Click Save Button

Enter Event Title
        [Arguments]     ${event title}
        Wait Until Element Is Visible    ${Add-Details-TextBox}
        Input Text    ${Add-Details-TextBox}    ${event title}

Click All Day Toggle Button
        Wait Until Element Is Visible    ${Toggle-Action}
        Click Element    ${Toggle-Action}
        
Click Save Button
        Wait Until Element Is Visible    ${Save-Button}
        Click Element    ${Save-Button}




