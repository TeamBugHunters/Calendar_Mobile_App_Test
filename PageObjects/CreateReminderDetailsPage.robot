*** Settings ***
Library     AppiumLibrary
*** Variable ***
${input}                       xpath=//android.widget.EditText[@resource-id="com.google.android.calendar:id/title_edit_text"]
${clickondate}                   xpath=//android.widget.Button[@content-desc="Start date: Thu, Dec 28, 2023"]/android.widget.LinearLayout/android.widget.TextView
${selectdate}                  xpath=//android.view.View[@content-desc="30 December 2023"]
${clickok}                      id=android:id/button1
${save}                        id=com.google.android.calendar:id/save

*** Keywords ***
Create Remainder
     Wait until element is visible    ${input}
      Input text   ${input}     Scrumcall
      Click element    ${clickondate}
      Wait until element is visible   ${selectdate}
      Click element    ${selectdate}
      Click element    ${clickok}
       Wait until element is visible   ${save}
      Click element    ${save}


