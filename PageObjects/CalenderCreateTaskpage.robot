# Created by SPURGE at 26-12-2023
*** Settings ***
Library     AppiumLibrary

*** Variables ***
${TaskText}     id=com.google.android.calendar:id/title
${Description}      id=com.google.android.calendar:id/description
${AllDayselectButton}   xpath=//android.widget.Switch
${Date}     xpath=//android.widget.TextView[contains(@content-desc,"Start date:")]
${SwitchToTextInput}     xpath=//android.widget.ImageButton[@content-desc="Switch to text input mode"]
${SwitchToCalenderInput}    xpath=//android.widget.ImageButton[@content-desc="Switch to calendar input mode"]
${DateInput}    xpath=//android.widget.EditText[@text]
${OkButton}     id=com.google.android.calendar:id/confirm_button
${MonthNavigation}      id=com.google.android.calendar:id/month_navigation_fragment_toggle
${year}     2024
${navigatepreviousmonth}     id=com.google.android.calendar:id/month_navigation_previous
${navigatenextmonth}        id=com.google.android.calendar:id/month_navigation_next
${SelectDate}       xpath=//android.widget.TextView[@content-desc="Wednesday, December 11, 2024"]
${SelectYear}       xpath=//android.widget.TextView[@content-desc="Navigate to year 2024"]
${Time}     xpath=//android.widget.TextView[contains(@content-desc,"Start time:")]
${SwitchToTextTimeInput}    id=com.google.android.calendar:id/material_timepicker_mode_button
${hourInput}    xpath=//android.widget.EditText[@text="11"]
${MinuteInput}    xpath=//android.view.View[@content-desc="30 minutes"]
${SelectAM}     id=com.google.android.calendar:id/material_clock_period_am_button
${SelectPM}     id=com.google.android.calendar:id/material_clock_period_pm_button
${Timepickerokbtn}      id=com.google.android.calendar:id/material_timepicker_ok_button
${TimepickerCancelbtn}      id=com.google.android.calendar:id/material_timepicker_cancel_button
${Repeat}   xpath=//android.widget.TextView[@resource-id="com.google.android.calendar:id/first_line_text" and @text="Does not repeat"]
${savebutton}    xpath=//android.widget.Button[@resource-id="com.google.android.calendar:id/save"]

*** Keywords ***
Create new Task
    [Arguments]     ${Task-Title}   ${Task-Description}
    Add Task Title     ${Task-Title}
    Add Task Description    ${Task-Description}
   # Click Allday button
    Select date and time
    Select Repeat option
    Click on save button

Add Task Title
    [Arguments]     ${Task-Title}
    Wait Until Element Is Visible    ${TaskText}
    Input Text    ${TaskText}    ${Task-Title}

Add Task Description
    [Arguments]     ${Task-Description}
    Wait Until Element Is Visible    ${Description}
    Input Text    ${Description}    ${Task-Description}

Click Allday button
    Wait Until Element Is Visible    ${AllDayselectButton}
    Click Element    ${AllDayselectButton}

Select date and time
    Wait Until Element Is Visible    ${Date}
    Click Element    ${Date}
    Wait Until Element Is Visible       ${SwitchToTextInput}
    Click Element    ${SwitchToTextInput}
    Wait Until Element Is Visible      ${DateInput}
    Input Text    ${DateInput}    01/24/2024
    Click Element    ${OkButton}
    
    Wait Until Element Is Visible    ${Time}

Select Repeat option
    Wait Until Element Is Visible    ${Repeat}
  #  Click Element    ${Repeat}
Click on save button
    Wait Until Element Is Visible    ${savebutton}
    Click Element    ${savebutton}
