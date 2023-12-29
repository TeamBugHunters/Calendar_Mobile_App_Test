# Created by SPURGE at 27-12-2023
*** Settings ***
Library    AppiumLibrary

*** Variables ***
${reminderText}    id=com.google.android.calendar:id/title_edit_text
${AllDayselectButton}   xpath=//android.widget.Switch[@resource-id="com.google.android.calendar:id/right_action"]
${Date}     xpath=//android.widget.TextView[@resource-id="com.google.android.calendar:id/first_line_text"]
${Time}     xpath=//android.widget.Button[contains(@content-desc,"Start time")]
${Repeat}   xpath=//android.widget.TextView[@content-desc="Does not repeat"]
${savebutton}   id=com.google.android.calendar:id/save

*** Keywords ***
Create New Reminder
    [Arguments]     ${Reminder-Title}
    Add Reminder Title     ${Reminder-Title}
    Click Allday button
    Select date and time
    Select Repeat option
    Click on save button

Add Reminder Title
    [Arguments]     ${Reminder-Title}
    Wait Until Element Is Visible    ${reminderText}
    Input Text    ${reminderText}    ${Reminder-Title}

Click Allday button
    Wait Until Element Is Visible    ${AllDayselectButton}
    Click Element    ${AllDayselectButton}

Select date and time
    Wait Until Element Is Visible    ${Date}
    Wait Until Element Is Visible    ${Time}

Select Repeat option
    Wait Until Element Is Visible    ${Repeat}
    
Click on save button
    Wait Until Element Is Visible    ${savebutton}
    Click Element    ${savebutton}