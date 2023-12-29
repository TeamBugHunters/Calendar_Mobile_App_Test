# Created by SPURGE at 11/23/2023
*** Settings ***
Library     AppiumLibrary


*** Variables ***
#${next-button}          //*[@class='android.widget.ImageButton']
#${button-GotIt}         //*[@text='Got it']
${next-button}            xpath=//android.widget.ImageView[@content-desc="next page"]
${button-GotIt}           id=com.google.android.calendar:id/done_button


*** Keywords ***
Skip initial setup
        Click Next Button
        Click Next Button
        Click Got It Button

Click Next Button
        Wait Until Element Is Visible    ${next-button}
        Click Element    ${next-button}

Click Got It Button
        Wait Until Element Is Visible    ${button-GotIt}
        Click Element    ${button-GotIt}


