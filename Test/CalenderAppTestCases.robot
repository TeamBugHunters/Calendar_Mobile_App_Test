# Created by SPURGE at 11/23/2023
*** Settings ***
Library     AppiumLibrary
Resource    ../PageObjects/InvokeCalenderPlatformVariables.robot
Resource    ../PageObjects/CreateEventDetailsPage.robot
Resource    ../PageObjects/CalenderHomePage.robot
Resource    ../PageObjects/CalenderLaunchPage.robot
Resource    ../Resources/TestData/Title.robot
Resource       ../Test/Calender_Android.CreateEventTest.robot

*** Keywords ***

*** Test Cases ***
Open Calender And Create Event
        Opening Calender Application
        Skip initial setup
        Go To Create New Event Page
        Create New Event    ${Add-Title}
