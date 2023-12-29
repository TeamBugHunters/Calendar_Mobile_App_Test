# Created by SPURGE at 26-12-2023
*** Settings ***
Library     AppiumLibrary   timeout=30s
Resource        ../Resources/TestData/Title.robot
Resource    ../PageObjects/InvokeCalenderPlatformVariables.robot
Resource    ../PageObjects/CalenderHomePage.robot
Resource    ../PageObjects/CalenderLaunchPage.robot
Resource    ../PageObjects/CalenderCreateReminder.robot
Resource    ../PageObjects/CalenderCreateTaskpage.robot
*** Keywords ***

*** Test Cases ***

Open Calender and Create Reminder
    Opening Calender Application
    Skip initial setup
    Go To Create New Task Page
    Create new Task     ${Task-Title}   ${Task-Description}