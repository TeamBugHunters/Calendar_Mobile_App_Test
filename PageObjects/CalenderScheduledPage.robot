*** Settings ***
Library     AppiumLibrary
*** Variables ***
${plus}          xpath=//android.widget.ImageButton[@content-desc="Create new event and more"]
${reminder1}      xpath=(//android.widget.ImageView[@resource-id="com.google.android.calendar:id/speed_dial_icon"])[1]

*** Keywords ***
Click on moreButton
        Wait until element is visible   ${plus}
       Click element  ${plus}

ClickReminder button
     Wait until element is visible  ${reminder1}
       Click element   ${reminder1}
