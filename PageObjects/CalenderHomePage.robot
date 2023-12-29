# Created by SPURGE at 11/23/2023
*** Settings ***
Library     AppiumLibrary
*** Variables ***
${create-new-event}     //android.widget.ImageButton[@resource-id='com.google.android.calendar:id/floating_action_button']
${new-Task}             //android.widget.TextView[@content-desc="Task button"]
${new-Reminder}         //android.widget.TextView[@content-desc="Reminder button"]
*** Keywords ***
Go To Create New Event Page
        Click New Event Button
        Click New Event Button


Click New Event Button
        Wait Until Element Is Visible    ${create-new-event}
        Click Element    ${create-new-event}

Go To Create New Reminder Page
        Click New Event Button
        Click New Reminder Button

Click New Reminder Button
        Wait Until Element Is Visible   ${new-Reminder}
        Click Element    ${new-Reminder}

Go To Create New Task Page
        Click New Event Button
        Click New Task Button

Click New Task Button
     Wait Until Element Is Visible   ${new-Task}
     Click Element    ${new-Task}