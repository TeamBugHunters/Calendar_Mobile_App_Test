*** Settings ***
Library     AppiumLibrary   timeout=30s
Resource        ../Resources/TestData/Title.robot

*** Keywords ***


*** Variables ***
#***Platform variables***
${platformName}     Android
${deviceName}       emulator-5554
${apppackage}       com.google.android.calendar
${appActivity}      com.android.calendar.LaunchActivity
${automationname}       UiAutomator2

#***LaunchPage Variables***
${next-button}          //*[@class='android.widget.ImageButton']
${button-GotIt}         //*[@text='Got it']
${create-new-event}     //content-desc[@content-desc='Create new event' and @enabled='true']

#***HomePage Variables***

${Create-Event}     //android.widget.ImageButton[@content-desc='Create new event']
#${Create-Event-Button}      //android.widget.ImageButton[@resour='4']
#***Task Creation Page
#-> call it from resources folder
${Add-Details-TextBox}      //android.widget.EditText[@text='Add title']
${Toggle-Action}        //android.widget.Switch[@index='1' and @package='com.google.android.calendar']
${Save-Button}          //android.widget.Button[@text='Save' and @index='2']









*** Test Cases ***
OpenCalenderApplication
               Open Application    http://Localhost:4723/wd/hub
               ...      platformName=${platformName}
               ...      deviceName=${deviceName}
               ...      appPackage=${apppackage}
               ...      appActivity=${appActivity}
               ...      automationname=${automationname}
               Wait Until Element Is Visible    ${next-button}
               Click Element    ${next-button}
               Wait Until Element Is Visible    ${next-button}
               Click Element    ${next-button}
               Wait Until Element Is Visible    ${button-GotIt}
               Click Element    ${button-GotIt}
#CreateEvent Page
               Wait Until Element Is Visible    ${Create-Event}
               Click Element        ${Create-Event}
               Wait Until Element Is Visible    ${Create-Event}
               Click Element    ${Create-Event}

#Add Event Details Page
               Wait Until Element Is Visible    ${Add-Details-TextBox}
               Input Text    ${Add-Details-TextBox}   ${Add-Title}




               




