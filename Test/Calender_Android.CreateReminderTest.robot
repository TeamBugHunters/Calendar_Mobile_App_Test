# Created by SPURGE at 28-12-2023
*** Settings ***

Library     AppiumLibrary   timeout=30s
Resource        ../Resources/TestData/Title.robot
Resource    ../PageObjects/InvokeCalenderPlatformVariables.robot
Resource    ../PageObjects/CalenderHomePage.robot
Resource    ../PageObjects/CalenderLaunchPage.robot
Resource    ../PageObjects/CalenderCreateReminder.robot

*** Keywords ***

*** Test Cases ***

Open Calender and Create Reminder
    Opening Calender Application
    Skip initial setup
    Go To Create New Reminder Page
    Create New Reminder    ${Reminder-Title}