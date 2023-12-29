# Created by SPURGE at 11/23/2023
*** Settings ***
Library     AppiumLibrary
Resource    ../PageObjects/InvokeCalenderPlatformVariables.robot
Resource    ../PageObjects/CreateEventDetailsPage.robot
Resource    ../PageObjects/CalenderHomePage.robot
Resource    ../PageObjects/CalenderLaunchPage.robot
Resource    ../Resources/TestData/Title.robot
Resource       ../Test/Calender_Android.CreateEventTest.robot
Resource    ../PageObjects/CalenderScheduledPage.robot
Resource    ../PageObjects/CreateReminderDetailsPage.robot

*** Keywords ***

*** Test Cases ***
Open Calender And Create Event
        Opening Calender Application
        Skip initial setup
        Go To Create New Event Page
        Create New Event    ${Add-Title}
open Calender And Create Reminder
       Opening Calender Application
       Skip initial setup
       Click on moreButton
       ClickReminder button
       Create Remainder

