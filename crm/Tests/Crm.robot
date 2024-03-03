*** Settings ***
Documentation     This is some basic info about the whole suite
Library           SeleniumLibrary

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]             This is some basic info about the test
    [Tags]                      1006    Smoke    Contacts
    # Initialize Selenium    
    Set selenium speed          .2s
    Set selenium timeout        10s
        
    # Open the browser    
    log                         Starting the test case!
    open browser                https://automationplayground.com/crm/    chrome
    
    click link                  id=SignIn
    page should contain         Login
        
    input text                  id=email-id        admin@robotframeworktutorial.com
    input text                  id=password        qwe
    click button                id=submit-id
    wait until page contains    Our Happy Customers

    click link                  link=New Customer
    input text                  id=EmailAddress    hg@gmail.com
    input text                  id=FirstName       H
    input text                  id=LastName        G
    input text                  id=City            ATP
    select from list by value   id=StateOrRegion   AK
    select radio button         gender             male
    click button                Submit
    wait until page contains    Success! New customer added.


    sleep                   3s
    close browser            

*** Keywords ***

