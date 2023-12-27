*** Settings ***
Library     AppiumLibrary

*** Variables ***
#calendar variables--Goals
${CAL_NEXT_ARROW}       com.google.android.calendar:id/next_arrow
${CAL_GOT_IT}           com.google.android.calendar:id/oobe_done_button
${CLICK_ON_PLUS}        com.google.android.calendar:id/floating_action_button
${CLICK_ON_GOALS}       com.google.android.calendar:id/speed_dial_groove_container
${CLICK_EXERCISE}       xpath=//android.widget.LinearLayout[@content-desc="Exercise category, examples: Run, do yoga, get your body moving, button."]
${CLICK_WORKOUT}        xpath=//android.widget.Button[@text="Work out"]
${CLICK_FREQUENCY}      com.google.android.calendar:id/weekly_one_time_per_week
${CLICK_LONG}           com.google.android.calendar:id/weekly_duration_15_mins
${CLICK_TIME}           com.google.android.calendar:id/morning
${GET_FRE}              com.google.android.calendar:id/frequency_summary
${GET_DUR}              com.google.android.calendar:id/duration_summary
${CLICK_MORE}           com.google.android.calendar:id/more_options_button
${CLICK_TOGGLE}         com.google.android.calendar:id/right_action
${CLICK_SAVE}           com.google.android.calendar:id/save
${SCHEDULE_SESSION}     com.google.android.calendar:id/floating_action_button


*** Test Cases ***
Open Application
    Open Application    http://localhost:4723/wd/hub        platformName=Android        deviceName=emulator-5554        appPackage=com.google.android.calendar     appActivity=com.android.calendar.LaunchActivity    automationName=UiAutomator2
    Wait Until Page Contains Element    ${CAL_NEXT_ARROW}
    Click Element    ${CAL_NEXT_ARROW}
    Wait Until Page Contains Element    ${CAL_GOT_IT}
    Click Element    ${CAL_GOT_IT}
    Wait Until Page Contains Element    ${CLICK_ON_PLUS}
    Click Element    ${CLICK_ON_PLUS}
    #click on goals
    Wait Until Page Contains Element    ${CLICK_ON_GOALS}
    Click Element    ${CLICK_ON_GOALS}
    Wait Until Page Contains Element    ${CLICK_EXERCISE}
    Click Element    ${CLICK_EXERCISE}
    Sleep    2s
    Wait Until Page Contains Element    ${CLICK_WORKOUT}
    Click Element    ${CLICK_WORKOUT}
    Wait Until Page Contains Element    ${CLICK_FREQUENCY}
    Click Element    ${CLICK_FREQUENCY}
    Wait Until Page Contains Element    ${CLICK_LONG}
    Click Element    ${CLICK_LONG}
    Wait Until Page Contains Element    ${CLICK_TIME}
    Click Element    ${CLICK_TIME}
    Wait Until Page Contains Element    ${CLICK_MORE}
    Click Element    ${CLICK_MORE}
    Wait Until Page Contains Element    ${CLICK_TOGGLE}
    Click Element    ${CLICK_TOGGLE}
    Wait Until Page Contains Element    ${CLICK_SAVE}
    Click Element    ${CLICK_SAVE}
    Wait Until Page Contains Element    ${SCHEDULE_SESSION}
    Click Element    ${SCHEDULE_SESSION}