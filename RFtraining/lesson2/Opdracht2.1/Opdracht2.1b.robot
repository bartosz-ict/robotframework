*** Settings ***
Documentation    Opdracht B:
         ...     - Gegeven twee lijsten
         ...     - Combineer beide lijsten
         ...     - Ontdubbel de waarden
         ...     - Verifieer je resultaat

Library    Collections    


*** Variables ***
@{lijst één met auto's}      Mazda-3     BMW 1     Fiat Multipla    Volkswagen Polo
@{lijst twee met auto's}    Audi A3     Mazda-3    Opel Crossland X    Ford Focus

*** Test Cases ***
Opdracht2.1b
        