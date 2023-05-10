*** Settings ***
Documentation    Opdracht 3.5A:​
...              Maak gebruik van Suite Setup / Teardown om het klaarzetten en opruimen van je testgevallen
...              efficiënter te maken
...              Opdracht 3.5B
...              Maak gebruik van Test Setup / Teardown in je testgevallen om enkele handelingen
...              'per testgeval' uit te voeren


Resource    Resources/Opdracht3.5.resource    

*** Test Cases ***
Log in met een foutief wachtwoord
    Open de login pagina
    Vul loginnaam en wachtwoord in    demo    edom
    Check dat je login is mislukt
    Close Browser