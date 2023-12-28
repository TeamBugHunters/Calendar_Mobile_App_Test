*** Settings ***
Library     AppiumLibrary

*** Variables ***
${NextArrow_btn}    xpath=//android.widget.ImageButton[@content-desc="next page"]
#id=com.google.android.calendar:id/next_arrow
${Got_it}           id=com.google.android.calendar:id/oobe_done_button
${wait}             id=android:id/aerr_wait
${Plus_Btn}         id=com.google.android.calendar:id/floating_action_button
${Task}             xpath=(//*[@resource-id="com.google.android.calendar:id/speed_dial_icon"])[4]
${AddTitle_Btn}     id=com.google.android.calendar:id/title
${addDetails}       id=com.google.android.calendar:id/description
${Date_Btn}         xpath=//*[@text="Thu, Dec 28, 2023"]
#xpath=//android.widget.ImageButton[@content-desc="Create new event and more"]

${Nextmonth}             xpath=//android.widget.ImageButton[@content-desc="Next month"]

${Date}             xpath=//*[@content-desc="04 February 2024"]
${ok}               id=android:id/button1
${save_Btn}         id=com.google.android.calendar:id/save

${var1}             Sis Birthdaty

*** Keywords ***
Open Calender
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=com.google.android.calendar  appActivity=com.android.calendar.event.LaunchInfoActivity  automationName=uiAutomator2

Navigate to HomePage
    Click Element   ${NextArrow_btn}
    Click Element    ${Got_it}
    Sleep               5s

Goto Task
    Wait Until Element Is Visible    ${Plus_Btn}
    Click Element    ${Plus_Btn}
    Wait Until Element Is Visible    ${Task}
    Click Element    ${Task}

Schedule Task
    Wait Until Element Is Visible   ${AddTitle_Btn}
    Click Element    ${AddTitle_Btn}
    Input Text    ${AddTitle_Btn}     Birthday

    Click Element    ${addDetails}
    Input Text    ${addDetails}     ${var1}

    Click Element    ${Date_Btn}

    Wait Until Element Is Visible   ${Nextmonth}
    Click Element    ${Nextmonth}
    Click Element    ${Nextmonth}
    Click Element    ${Date}

    Click Element    ${ok}
    Click Element    ${save_Btn}


*** Test Cases ***
EmulatorTest
   Open Calender
   Navigate to HomePage
   Goto Task
   Schedule Task