*** Settings ***
Documentation    
...    
Library    String    
Library    Collections    
Library    OperatingSystem    

*** Variables ***
${leestekens}    ,    .

*** Test Cases ***
test1
    ${verhaal}    Get File    verhaal.txt
    FOR    ${a}    IN    ${leestekens}
        ${verhaal}    Remove String    ${verhaal}    ${a}
    END
    ${verhaallijst}    Split String    ${verhaal}
    Log To Console    ${verhaallijst}
    ${x}    Count Values In List     ${verhaallijst}    van
    Log To Console    Het woord "van" komt ${x} keer voor in verhaal.txt    
        