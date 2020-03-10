*** Settings ***
Library  Selenium2Library


*** Variables ***
@{WIDTH}    1920
@{HEIGHT}   1080
@{Browser}  Firefox


*** Keywords ***
Begin web test on local display
    Open Browser                    @{START_URL}         @{Browser}     1       options=add_argument("--ignore-certificate-errors")
    #maximize browser window
    set window size                 @{WIDTH}    @{HEIGHT}
    set selenium speed              0.5 seconds
    set selenium timeout            8 seconds
    set selenium implicit wait      5s

End web test
    close all browsers