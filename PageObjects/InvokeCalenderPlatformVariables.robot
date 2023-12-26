# Created by SPURGE at 11/23/2023
*** Settings ***
Library     AppiumLibrary



*** Variables ***
${platformName}     Android
${deviceName}       emulator-5554
${apppackage}       com.google.android.calendar
${appActivity}      com.android.calendar.LaunchActivity
${automationname}       UiAutomator2
*** Keywords ***
Opening Calender Application
        Open Application    http://Localhost:4723/wd/hub
               ...      platformName=${platformName}
               ...      deviceName=${deviceName}
               ...      appPackage=${apppackage}
               ...      appActivity=${appActivity}
               ...      automationname=${automationname}