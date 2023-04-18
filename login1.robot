*** Settings ***
Library  SeleniumLibrary
Resource  ../keywords/loin.robot
*** Test Cases ***
LOG
    open my browser     ${url}      ${browser}
    click linker
    enter contact information   ${firstname}    ${lastname}     ${phone}    ${email}
    enter mailing info      ${adress}       ${city}     ${province}     ${pin}      ${country_name}
    enter user info     ${user}     ${pwd}      ${confpwd}
    click submit
    verify sucess
    enter username       ${user}
    enter password       ${pwd}
    click login
    check login
