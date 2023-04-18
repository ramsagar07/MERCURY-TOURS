*** Settings ***
Library  SeleniumLibrary
Variables  ../page/login.py
*** Variables ***
${url}      https://demo.guru99.com/test/newtours/
${browser}      chrome
${firstname}    Ram
${lastname}     Sagar
${phone}        6281836365
${email}        ramsagar70901@gmail.com
${adress}       Bachupalli
${city}         Hyderabad
${province}     Telangana
${pin}          534123
${country_name}     INDIA
${user}         Ram@12345
${pwd}          Rama0876
${confpwd}      Rama0876
*** Keywords ***
open my browser
    [Arguments]  ${url}     ${browser}
    open browser    ${url}  ${browser}
    maximize browser window

close my browser
    close all browsers
enter contact information
    [Arguments]     ${firstname}    ${lastname}     ${phone}    ${email}
    input text  ${fname}   ${firstname}
    input text  ${lname}   ${lastname}
    input text  ${phoneno}   ${phone}
    input text  ${emid}   ${email}
enter mailing info
    [Arguments]  ${adress}  ${city}     ${province}     ${pin}      ${country_name}
    input text  ${address}     ${adress}
    input text  ${city_name}     ${city}
    input text  ${state_name}     ${province}
    input text  ${post}     ${pin}
    select from list by label   ${country}      ${country_name}
enter user info
    [Arguments]  ${user}    ${pwd}      ${confpwd}
    input text  ${user_id}     ${user}
    input text  ${password}     ${pwd}
    input text  ${conf_password}     ${confpwd}
click linker
    click link  REGISTER
click submit
    click element   ${enter}
verify sucess
    title should be     ${title}
enter username
    go to   ${url}
    [Arguments]  ${user_tag}
    input text  ${user_name}    ${user}
enter password
    [Arguments]  ${password-tag}
    input text  ${pwd1}  ${pwd}
click login
    click element   ${submit}
check login
    title should be     ${login_title}
    log to console       user registered
    log to console      registration successful