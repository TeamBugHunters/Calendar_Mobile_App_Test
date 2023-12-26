# Created by SPURGE at 11/23/2023
*** Settings ***
Library     AppiumLibrary
*** Variables ***
${create-new-event}     //android.widget.ImageButton[@resource-id='com.google.android.calendar:id/floating_action_button']

*** Keywords ***
Go To Create New Event Page
        Click New Event Button
        Click New Event Button


Click New Event Button
        Wait Until Element Is Visible    ${create-new-event}
        Click Element    ${create-new-event}