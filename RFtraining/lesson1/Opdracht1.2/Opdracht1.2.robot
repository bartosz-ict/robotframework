*** Settings ***
Documentation    Start voor deze test de DemoApp. Open hiervoor de folder demoapp_dev in een command prompt
          ...    en run: python server.py
          ...    Op http://localhost:7272 draait nu een webpagina waarop je kunt inloggen. 
          ...    Maak een test waarmee je succesvol inlogt of één waar het inloggen faalt.
          ...    
          ...    Voer een script uit waarmee je:​
          ...    - Een browser opent​
          ...    - Usernaam invult​
          ...    - Wachtwoord invult​
          ...    - Op inlogbutton klikt​
          ...    
          ...    Enkele hints voor een aantal stappen:
          ...     - Input tekst in text veld -> Gebruik bij tekstvak het element 'username_field'
          ...     - Input password in veld   -> Gebruik bij password het element 'password_field'
          ...     - Klik op inlog knop       -> Gebruik voor de knop het element 'login_button'
          ...    
          ...    Voor een 'valide' test gebruik de correcte logingegevens:
          ...     - Username: demo
          ...     - Password: mode
      
Library    Browser


*** Test Cases ***
